import Foundation
import Factory
import OSLog

class Content: ObservableObject {
  @Published var text:String?
  let fooServiceProxy = Container.shared.fooService()
  var valueUpdater: Any?
  
  init() {
    Task {
      print("Getting foo text")
//      Logger.model.info("Getting foo text")
      text = await self.fooServiceProxy.getFoo()
      print("Got foo text")
    }
    valueUpdater = $text.sink { value in
      guard let value else { return }
      Task {
        await self.fooServiceProxy.setFoo(foo:value)
      }
    }
  }
}
