//
//  gradient.swift
//  swiftUINotes
//
//  Created by Ritik Karma on 11/23/24.
//

import SwiftUI

struct gradient: View {
    var body: some View {
        Image(systemName: "visionpro")
            .font(.system(size: 100 ,weight: .ultraLight))
            .foregroundStyle(
                LinearGradient(colors: [.gray, .black, .gray], startPoint: .top, endPoint: .bottom
            ),
        EllipticalGradient(colors: [.indigo, .black],
                           center: .center,
                           startRadiusFraction: 0.0, endRadiusFraction: 0.50))
            .shadow(color: .black.opacity(0.5), radius: 25, y: 7)
        
    }
}

#Preview {
    gradient()
}
