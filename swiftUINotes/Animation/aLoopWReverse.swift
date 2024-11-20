//
//  animationLoop.swift
//  swiftUINotes
//
//  Created by Ritik Karma on 11/20/24.
//

import SwiftUI

struct aLoopWReverse: View {
    @State var isAni = false
    var body: some View {
        Text("BOOM!")
            .foregroundStyle(.red)
            .scaleEffect(isAni ? 6.5 : 0)
            .onAppear{
                isAni.toggle()
            }
            
        //normal
//            .animation(.easeInOut(duration: 1), value: isAni)
        
        //In loop
            .animation(.easeInOut(duration: 1).repeatForever(autoreverses: true), value: isAni)
        
    }
}

#Preview {
    aLoopWReverse()
}
