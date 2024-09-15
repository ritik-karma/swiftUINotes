///Similar to Buttons
///Can work on whole stack also
import SwiftUI

struct Gestures: View {
    @State var globeSize: CGFloat = 60
    @State var lightBulb = false
    var body: some View {
        //MARK: LONG Press
        Image(systemName: "globe")
            .resizable()
            .scaledToFit()
            .frame(width: globeSize , height: 140)
            .onLongPressGesture{
                globeSize = 120
            }
            .padding()
        
        
        //MARK: ON tap
        Image(systemName: lightBulb ? "lightbulb.max.fill" : "lightbulb")
            .resizable()
            .scaledToFit()
            .frame(width: 60 , height: 60)
            .foregroundStyle(lightBulb ? .yellow : .gray)
            .onTapGesture {
                lightBulb.toggle()
            }
            .padding()
        //MARK: etc
        
    }
    
}

#Preview {
    Gestures()
}
