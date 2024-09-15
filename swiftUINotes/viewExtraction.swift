///separate reusable components
/// Is type of a function for view where we can use views multiple times by giving input parameters
/// can save in diffrent files

import SwiftUI

struct personRowView : View {
    let person: String       ///The view takes an input parametre called person
    let imageName: String
    var body: some View {
                    HStack {
                        Image(imageName)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 110, height: 80)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            .shadow(radius: 10)
                        
                        
                        VStack (alignment: .leading){
                            Text(person)
                                .bold()
                            Text("gali no: 1")
                                .foregroundStyle(.gray)
                        }
                        Spacer()
                    }
                }
        }

struct endView: View {
    var body: some View {
        Text("Bye Bye")
    }
}

struct viewExtraction: View {               ///Main view
    var body: some View {
        ScrollView{
            personRowView(
                person: "bondu",
                imageName: "casual_male"
            )
            personRowView(person: "kantya", imageName: "administrator_male")
            personRowView(person: "bichu", imageName: "pizza")
            personRowView(person: "gandu", imageName: "apple")
        }
        HStack{
            endView()
                .background(.yellow)
        }
    }
}


#Preview {
    viewExtraction()
}
