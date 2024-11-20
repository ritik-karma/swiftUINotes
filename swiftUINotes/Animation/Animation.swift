//
//  SwiftUIView.swift
//  swiftUINotes
//
//  Created by Ritik Karma on 11/20/24.
//

import SwiftUI

struct Animation: View {
    @State var isAnimated = false
    var body: some View {
        RoundedRectangle(cornerRadius: 40)
            .fill(.purple)
            .frame(width: isAnimated ? 200 : 100, height: 100)
            .animation(.linear(duration: 0.3), value: isAnimated) //animation will apply on value changes. Duration use seconds
            .onTapGesture {
                isAnimated.toggle()
            }
            .onAppear{ //will toggle when first appear
                isAnimated.toggle()
            }
            .padding()
    }
        
        
}

#Preview {
    Animation()
}
