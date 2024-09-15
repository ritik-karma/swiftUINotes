

import SwiftUI

struct Play: View {
    var users:[String] = ["luis.lancha", "luicn1234", "Bhairav_12", "ayush45", "ritik0123"]
    var body: some View {
        VStack (alignment: .leading){
            Text("Search")
                .padding(.top, 19)
                .font(.largeTitle)
                .bold()
            ZStack{
                Rectangle()
                    .fill(.gray)
                    .frame(width: .infinity, height: 40)
                    .cornerRadius(15)
                HStack{
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                    Spacer()
                }
                .padding(.horizontal)
            }
            .padding(.bottom)
            ForEach(users, id: \.self) { i in
                HStack{
                    Image("casual_male")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    HStack{
                        VStack(alignment: .leading){
                            Text(i)
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        }
                        Spacer()
                        Rectangle()
                            .stroke(lineWidth: 13)
                            .fill(.gray)
                            .frame(width: 140, height: 60)
                            .cornerRadius(18)
                            .overlay(Text("Following").foregroundColor(.gray))
                    }
                }
                Divider()
            }
        }
        .padding()
        Spacer()
        }
}


#Preview {
    Play()
}
