////
//  messengerLoginPage.swift
//  swiftUiBasics
//
//  Created by Ritik Karma on 02/02/24.
//

import SwiftUI

struct messengerLoginPage: View {
    @State var email = ""
    @State var password = ""
   var screenWidth = UIScreen.main.bounds.width - 25
    var body: some View {
        VStack (spacing: 24){
            ///spacing will applied to image and VStack
            Image("apple")
                .resizable()
                .scaledToFit()
                .frame(width: 180, height: 180)
            VStack {
                TextField("Enter you email", text: $email )
                    .padding(16)
                    .background(Color(.systemGroupedBackground))
                    .font(.headline)
                    .cornerRadius(15)
                    .keyboardType(.emailAddress)
                    .textInputAutocapitalization(.never)
                    .autocorrectionDisabled()
                
                SecureField("Enter you password", text: $password)
                    .padding(16)
                    .background(Color(.systemGroupedBackground))
                    .font(.headline)
                    .cornerRadius(15)
                    .keyboardType(.emailAddress)
                    .textInputAutocapitalization(.never)
                    .autocorrectionDisabled()
            }
            Button("Forget Password?") {
                }
            Button(action: {
                print("Email is \(email)")
                print("Password is \(password)")
            }, label: {
                Text("Login")
                    .font(.headline)
                    .frame(width: screenWidth
                           , height: 50)
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(13)
                    
                ///width: "full width of iphone"
            })
            
        }
        .padding()
    }
}

#Preview {
    messengerLoginPage()
}
