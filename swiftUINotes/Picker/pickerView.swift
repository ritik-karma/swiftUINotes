///there r diff typer of picker UI
import SwiftUI




struct PickerView: View {
    @State var selectedColour = ""
    var colours = ["blue", "green", "purple", "black", "white"]
    @State var isLoginMode = true
    

   
    
    var body: some View {
        
        Picker("", selection: $isLoginMode) {
            Text("Login")
                .tag(true)///tag is used to associate a unique value with picker. if using tag all picker should have unique value OR use for each that will provide unique id's
            Text("Create Account")
                .tag(false)
        }
        .pickerStyle(.segmented)///Diffrent styles of picker view
        
        
        Divider()
            .padding()
        
        
        Picker("Favourite Colour", selection: $selectedColour) {
            ForEach(colours, id: \.self){ color in
                Text("colour is \(color)")
                ///no need to use tag because every color has  a unique id
            }
        }
        .pickerStyle(.inline)
        Text("My fav is \(selectedColour)")
            .font(.largeTitle)

           
        
        
    }
}

#Preview {
    PickerView()
}
