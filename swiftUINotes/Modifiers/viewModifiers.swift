///used to apply consistent styling or behavior

import SwiftUI

struct customModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.purple)
            .fontWeight(.semibold)
    }
}
extension View{
    func titleStyle() -> some View {
        modifier(customModifier())
    }
}
///CAn write above code in diffrent file also
struct viewModifiers: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .modifier(customModifier())
        Text("Hello!")
            .titleStyle() ///Can use this way also
        Text("World")
            .modifier(customModifier())


    }
}

#Preview {
    viewModifiers()
}
