import GRPC
import NIO
import Proto_foo_service_proto
import Proto_foo_service_swift_grpc_client
import Logging
import Factory
import OSLog

protocol FooServiceProxy {

  func getFoo() async -> String

  func setFoo(foo: String) async

}

class RemoteFooServiceProxy: FooServiceProxy {
  private let fooService: FooServiceAsyncClientProtocol
  private let group: MultiThreadedEventLoopGroup
  private let channel: GRPCChannel

  init() throws {
    group = MultiThreadedEventLoopGroup(numberOfThreads: 1)
    channel = try GRPCChannelPool.with(
      target: .host("localhost", port: 8080),
      transportSecurity: .plaintext,
      eventLoopGroup: group
    )
    fooService = FooServiceAsyncClient(channel: channel)
  }

  func getFoo() async -> String {
    print("Getting remote foo")
    return try! await fooService.getFoo(GetFooRequest()).foo.name
  }
  func setFoo(foo: String) async {
    let _ = try! await fooService.setFoo(
      SetFooRequest.with {
        $0.foo = Foo.with {
          $0.name = foo
        }
      }
    )
  }

  deinit {
    try! group.syncShutdownGracefully()
    try! channel.close().wait()
  }
}

class LocalFooServiceProxy: FooServiceProxy {

  var fooName: String
  var blockReturn: Bool

  func setFoo(foo: String) async {
    self.fooName = foo
  }
  
  func getFoo() async -> String {
    if blockReturn {
      print("sleeping")
      do{
        try await Task.sleep(nanoseconds: 1 * UInt64(NSEC_PER_SEC))
      } catch {
        print("Error sleeping \(error)")
      }
    }
    return fooName
  }
  
  init(fooName: String, blockReturn: Bool) {
    self.fooName = fooName
    self.blockReturn = blockReturn
  }
}

extension Container {
  var fooService: Factory<FooServiceProxy> {
    Factory(self) { try! RemoteFooServiceProxy() }
  }
}
