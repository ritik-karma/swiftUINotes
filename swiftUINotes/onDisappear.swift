//
//  onDisappear.swift
//  swiftUINotes
//
//  Created by Ritik Karma on 12/4/24.
//

import SwiftUI

struct onDisappear: View {
    var body: some View {
        NavigationStack{
            VStack{
                NavigationLink(destination: detailView()) {
                    Text("NavigationLink")
                }

            }
            .onAppear{
                print("onDisappear View appeared")
            }
            .onDisappear{
                print("onDisappear View disappeared")
            }
            
            
        }    }
}

//MARK: DetailView
struct detailView: View {
    var body: some View {
        Text("DetailView")
    }
}

#Preview {
    onDisappear()
}
