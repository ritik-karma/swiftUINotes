
import SwiftUI

struct Loop: View {
    var body: some View {
        ForEach(0...8, id: \.self) { i in ///'i' means i will call indexes as i
            ///instead of self we can use something else also which is uniquely identifier
            Text("Hello, \(i)")
/// id: \.self -> means that swiftui will assign every element an unique id. if we did't use it swiftui will confuse.(i  applied identifiable in that then no need)
        }
    }
}

#Preview {
    Loop()
}
