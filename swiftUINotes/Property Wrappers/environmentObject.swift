///Pass Custom instances to the view hierarchy

import SwiftUI

struct EnvironmentObject: View {
    @State var hii = "hii"
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
           // .environmentObject(hii)
        /// aise hi view hierarchy me dete hai environment ob , specific cases mei isme error aa rha hai kyuki applicable nhi hai kuch bhi
    }
}

#Preview {
    EnvironmentObject()
}
