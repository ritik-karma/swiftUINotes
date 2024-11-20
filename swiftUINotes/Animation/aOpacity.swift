//
//  aOpacity.swift
//  swiftUINotes
//
//  Created by Ritik Karma on 11/20/24.
//

import SwiftUI

struct aOpacity: View {
    @State var opacity:Double = 0.1
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .opacity(opacity)
            .font(.largeTitle)
        
        Button{
            withAnimation(.easeInOut(duration: 0.9)){
                opacity = opacity == 0.1 ? 0.9 : 0.1
            }
        } label: {
            Text(opacity == 0.1 ? "Show" : "Hide")
        }
        
    }
}

#Preview {
    aOpacity()
}
