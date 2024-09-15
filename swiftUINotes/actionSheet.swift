//
//  actionSheet.swift
//  swiftUi-Notes
//
//  Created by Ritik Karma on 12/08/24.
//

import SwiftUI

struct actionSheet: View {
    @State var userSelection = ""
    @State var showingConfirmation = false
    var body: some View {
        Text("User Selection is \(userSelection)")
        
        
        Button("Action Sheet"){
            showingConfirmation = true
        }
        .buttonStyle(BorderedButtonStyle())
        .confirmationDialog("Select Any", isPresented: $showingConfirmation, titleVisibility: .visible) {
            Button("Blue"){
                userSelection = "Blue"
            }
  
            Button("Green"){
                userSelection = "Green"
            }
     
            Button("indigo"){
                userSelection = "indigo"
            }
            Button("Cancel", role: .cancel){}
        }
    }
}

#Preview {
    actionSheet()
}
