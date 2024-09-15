/// I think nt recommended because nt compatible to every size device go for geometry reader
import SwiftUI

struct positionView: View {
    var body: some View {
        Text("Hello, world!")
            .position(x:0,y:0) //frame = screen size, takes from centre of the text
        //.offset(x:,y:)// frame will be as it is but the text will move by xy    }
    }
}
#Preview {
    positionView()
}
