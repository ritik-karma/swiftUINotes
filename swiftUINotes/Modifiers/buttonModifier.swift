//
//  buttonModifier.swift
//  swiftUINotes
//
//  Created by Ritik Karma on 02/10/24.
//

import SwiftUI

struct buttonModifier: View {
    var body: some View {
        Button{} label: {Text("Kaka")}
        .buttonStyle(CapsuleButtonStyle())
        
        Button{} label: {
            HStack{
                Image("bowl")
                    .resizable()
                    .scaledToFit()
                Text("Baka")
            }
            
        }
        .frame(width: 350, height: 50)
            .buttonStyle(CapsuleButtonStyle(fontColour: .green, backgroundColour: .yellow))
        
    }
}

#Preview {
    buttonModifier()
}

struct CapsuleButtonStyle: ButtonStyle {
    
    var fontColour: Color = .white
    var backgroundColour: Color = .purple
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label //apply on label of button
            .padding()
            .frame(maxWidth: .infinity)
            .background(Capsule().fill(backgroundColour))
            .foregroundStyle(fontColour)
            .scaleEffect(configuration.isPressed ? 0.95 : 1)
        
    }
}
