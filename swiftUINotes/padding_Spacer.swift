
import SwiftUI

struct padding: View {
    var body: some View {
        VStack (spacing: 35)//will make spaces bw stacks by 35 pixels
        {
            Text("Default padding")
                .background(.blue)
                .padding()
                .background(.yellow)//oder matters so use it after padding
                .padding()
                .background(.brown)
            Text("Mannual 5 pixel's padding")
                .padding(5)
                .background(.pink)
            
            Spacer()
            
            HStack {
                Text("Mannual only top 5 p p")
                    .padding(.top, 5)
                .background(.cyan)
                
                Spacer()
            }
            Text("Horizontal padding")
                .padding(.horizontal)
                .background(.purple)
            Text("leading & bottom padding with 20 pixel")
            
                .frame(width: 100, height: 50)

                .padding([.leading, .bottom], 20)
                .background(.green)


            //Just like that we apply leading & trailing padding also
        }
        .padding() //to whole stack
    }
}

#Preview {
    padding()
}
