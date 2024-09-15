import SwiftUI

struct controlFlow: View {
    @State var likes = 40
    @State var didLike = false
    var body: some View {
       
        Button(action: {
            didLike.toggle()
            
//            if didLike {
//                likes += 1
//            } else {
//                likes -= 1
//            }
            /// Same we can do with ternary operator (Optimized)
            didLike ? (likes += 1) : (likes -= 1)
            
        }, label: {

//            if didLike {
//                Image(systemName: "heart.fill")
//                    .resizable()
//                    .scaledToFit()
//                    .foregroundColor(.red)
//                    .frame(width: 260, height: 60)
//            } else {
//                Image(systemName: "heart")
//                    .resizable()
//                    .scaledToFit()
//                    .foregroundColor(.black)
//                    .frame(width: 260, height: 60)
//            }
            /// Same we can do with ternary operator (Optimized)
            
            Image(systemName: didLike ? "heart.fill" : "heart")/// should return the same type of value
                .resizable()
                .scaledToFit()
                .foregroundColor(didLike ? .red : .black)
                .frame(width: 260, height: 60)
        })
        Text("Likes: \(likes)")
            .font(.title)
        }
    }

#Preview {
    controlFlow()
}
