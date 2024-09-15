/// In list there is only 1 item in a row

import SwiftUI

struct LazyGrid: View {
    let items = 1...150
    let row = [GridItem(.fixed(15)),///15 will be width of the first coloumn
                GridItem(.fixed(100))]
    let layout = [GridItem(.adaptive(minimum: 180)) ]///minimum width for each item will be 180 (if reduce then it will assigne more coloums )
    var body: some View {
        ScrollView(.horizontal){
            LazyHGrid(rows: row){
                ForEach(items, id: \.self) {
                    item in
                    VStack{
                        Image("apple")
                        Text("\(item)")
                    }
                   
                    
                }
            }
        }
        NavigationStack{
            ScrollView{
                LazyVGrid(columns: layout) {
                    ForEach(1..<50, id: \.self){ i in
                        NavigationLink {
                            sampleGrid(clickedImageNum: i)
                        }label: {
                            Image("apple")
                            Text("\(i)")

                        }
                    }
                }
            }
            .navigationTitle("Grid Images")
        }
        
    }
}

#Preview {
    LazyGrid()
}
