//
//  jsonReader.swift
//  swiftUINotes
//
//  Created by Ritik Karma on 11/19/24.
//

import SwiftUI

struct jsonReader: View {
    //func created im 'jsonFileRead'
     var  userData = loadData()

    var body: some View {
        NavigationStack{
                        List(userData, id:\.name){ user in
                            NavigationLink{
                                empDetailView(name: user.name, email: user.email, designation: user.designation)
                            } label: {
                                
                                Text(user.name)
                            }
                    }
                

            }
                        .navigationTitle("Employee")
        }
    }


#Preview {
    jsonReader()
}
