
//
// By sean allen alerts video on YT
// for login error alerts go through that video

import SwiftUI

struct Alerts: View {
    @State var isShowingBasicAlert = false
    @State var enterValue = false
    @State var textField = ""
    
    var body: some View {
        VStack(spacing: 40){
            Button("Fetch Data"){
                isShowingBasicAlert = true
            }
            .alert("No netwoek", isPresented: $isShowingBasicAlert) {
                //action: code
                Button("Try again"){
                    //Try again code
                }
                Button("Delete", role: .destructive) {
                    //Do delete code
                }
                Button("Cancel", role: .cancel) {
                    ///Mostly no code goes here because its only cancel
                }
            } message: {
                Text("It can be blank also")
            }
///OK will turn it to false also if not provide any actions code
            
            
            
            Button("Enter Data"){
                enterValue.toggle()
            }
            .alert("Enter Value", isPresented: $enterValue) {
                TextField("Enter Text", text: $textField)
                Button("Submit"){
                    //Submit code
                }
                Button("Cancel", role: .cancel) {}
            } message: {
                Text("enter rthe value")
            }
        }
        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    Alerts()
}
