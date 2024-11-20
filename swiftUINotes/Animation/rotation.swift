//
//  rotation.swift
//  swiftUINotes
//
//  Created by Ritik Karma on 11/20/24.
//

import SwiftUI

struct rotation: View {
    @State var isRotate = false
    var body: some View {
        Button{
            isRotate.toggle()
        } label: {
            Text("Rotate")
                .font(.title)
                .foregroundStyle(.white)
                .frame(width: 150, height: 100)
                .background(Color.purple)
                .clipShape(RoundedRectangle(cornerRadius: 15))
            
            ///simple
               // .rotationEffect(.degrees(isRotate ? 90 : 0))
            
            //3d rotation
                .rotation3DEffect(.degrees(isRotate ? 250 : 12), axis: (x: 4, y: 0, z: 3))
                .animation(.easeInOut(duration: 0.9), value: isRotate)
        }
    }
}

#Preview {
    rotation()
}
