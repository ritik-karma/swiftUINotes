//
//  empDetailView.swift
//  swiftUINotes
//
//  Created by Ritik Karma on 11/19/24.
//

import SwiftUI

struct empDetailView: View {
    var name : String
    var email: String
    var designation: String
    
    var body: some View {
        Text(name)
        Text(email)
        Text(designation)
        }
}

#Preview {
    //its a default input only will get employee detail if we came from jsonReader view
    empDetailView(name: "ritik", email: "ss", designation: "ss")
}
