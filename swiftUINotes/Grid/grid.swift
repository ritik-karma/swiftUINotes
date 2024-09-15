

import SwiftUI
/*
struct grids: View {
    let columns: [GridItem] = [
        .init(.fixed(150)), ///it fix only those wht i nt mention in frame below
      //  .init(.adaptive(minimum: 50, maximum: 200)),///don't know it was creating duplicate
        .init(.flexible(minimum: 50, maximum: 120))///behave like a spacer it fill out the space , don't necessary to declare min & max.
        ///there will be 3 coloumns of grid
        ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach (0 ... 50 , id: \.self) {i in
                    Rectangle()
                        .frame( height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                }
            }
        }
        
    }
}
*/

struct grids: View {
    var body: some View {
        Grid{
            GridRow{
                ForEach(0...2, id: \.self){ _ in
                    Circle()
                        .foregroundStyle(.blue)
                }
            }
                GridRow{
                    Capsule()
                    Text("Wellcome to Grid view")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .gridCellColumns(2 )
                }
            GridRow{
                ForEach(0...3, id: \.self){ _ in
                    Rectangle()
                        .foregroundStyle(.red)
                        .frame(width: 60, height: 80)
                }
                
            }

            
        }
        
    }
}

#Preview {
    grids()
}
