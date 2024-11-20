//
//  scaleAndSpring.swift
//  swiftUINotes
//
//  Created by Ritik Karma on 11/20/24.
//

import SwiftUI

struct scaleAndSpring: View {
    @State var scale: CGFloat = 1.2
    @State var angle:CGFloat = 0.0
    var body: some View {
        Button{
            scale += 0.3
        }  label: {
            Text("Scale Me")
                .scaleEffect(scale)
            
        }
        
        Rectangle()
            .foregroundStyle(.blue)
            .frame(width: 100, height: 100)
            .rotationEffect(.degrees(angle))
            .onTapGesture {
                angle += 90
            }
            .animation(.spring(response: 1, dampingFraction: 5), value: angle)
        //response is duration & damfra.. is ending time
            
    }
}

#Preview {
    scaleAndSpring()
}
