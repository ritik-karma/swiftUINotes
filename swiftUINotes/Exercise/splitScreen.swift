//
//  splitScreen.swift
//
//
//  Created by Ritik Karma on 23/06/24.
//

import SwiftUI

struct splitScreen: View {
    var body: some View {
        GeometryReader { geometry in
            
            VStack(spacing: 0) {
                // Top half of the screen
                VStack {
                    Text("Top Half")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                }
                .frame(width: geometry.size.width, height: geometry.size.height / 2)
                .background(Color.blue)
                
                
                
                // Bottom half of the screen
                VStack {
           
                    Text("Bottom Half")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                }
                .frame(width: geometry.size.width, height: geometry.size.height / 2)
                .background(Color.green)
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    splitScreen()
}
