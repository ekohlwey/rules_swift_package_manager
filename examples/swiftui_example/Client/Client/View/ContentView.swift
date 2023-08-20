import SwiftUI
import Factory

struct ContentView: View {

    @State var content: Content

    var body: some View {
      if content.text != nil {
        TextField("Foo", text: Binding(get: {
          content.text ?? ""
        }, set: {
          value in content.text = value
        }))
      } else {
        Text("Loading...")
      }
    }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    Group{
      let _ = Container.shared.fooService.register { LocalFooServiceProxy(fooName: "bar", blockReturn: false) }
      ContentView(content: Content())
      let _ = Container.shared.fooService.register { LocalFooServiceProxy(fooName: "bar", blockReturn: true) }
      ContentView(content: Content())
    }
  }
}
