


///Can use toggle also instead of buttons
/// toggle()  can change the bool value

import SwiftUI

struct myButton: View {
    
    @State var rectangleColour = Color.blue ///now the colur of block will be depend on this state property
    @State var name = "Ritik"
    
    func printS () {
        print("Button 3 clicked")
        }
    
    var body: some View {
        VStack {
            Rectangle()
                .frame(width: 160, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                .cornerRadius(16)
                .foregroundColor(rectangleColour)
            
            Text(name)
                .font(.title)
            Divider()
            
            
               //MARK: Type1
            Button("Default Button with in built styles") {
                ///Don't write any view related code in action (only swift code)
                rectangleColour = .pink
                name = "ritik"
                print("clicked")
                
            }
            .buttonStyle(BorderedProminentButtonStyle())
            .padding()
            
            
            //MARK: Type2
            Button(action: {
                rectangleColour = .purple
                name = "Ayush"
            }, label: {
                Text("Custum Button")
                    .font(.headline)
                    .frame(width: 350, height: 50)
                    .foregroundStyle(.purple)
                    .foregroundColor(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .cornerRadius(20)
            })
            .padding()
            
            Button{
                rectangleColour = .yellow
                name = "Sun rise"
            } label: {
                Image(systemName: "sun.horizon.circle.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 280, height: 60)
                    .foregroundColor(.yellow)
            }
            
        }
        Button("func Button"){
            printS()
        }
        .buttonStyle(.bordered )
        .tint(.red)
        .frame(width: 100, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
        .padding()
        
    
    }
}

#Preview {
    myButton()
}
