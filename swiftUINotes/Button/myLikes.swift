

import SwiftUI

struct myLikes: View {
    @State var likes = 40
    @State var didLike = false
    var body: some View {
       
        Button(action: {
            didLike.toggle()
            didLike ? (likes += 1) : (likes -= 1)
            
        }, label: {
            Image(systemName: didLike ? "heart.fill" : "heart")
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
    myLikes()
}
