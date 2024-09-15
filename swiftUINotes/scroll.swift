//Initially scroll view is vertically use Hstack outside loop

import SwiftUI

struct scrollView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            ///Got an error when i put the name of this module as ScrollView. showsIndicators means, also use same for Vstack
            HStack {
                ForEach(0...100, id: \.self) { i in
                    Text("hello \(i)")
                }
            }
        }
    }
}

#Preview {
    scrollView()
}
