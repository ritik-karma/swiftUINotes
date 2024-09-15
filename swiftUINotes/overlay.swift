//
//  Overlay.swift
//
//
//  Created by Ritik Karma on 01/06/24.
///ZStack: Lays out views behind each other (like a cake). Ideal for complex layouts.
///.overlay(): Adds a view on top of another view (like sprinkles on a cupcake). Great for targeted enhancements.

import SwiftUI

struct Overlay: View {
    var body: some View {
        ScrollView{
            ForEach(0..<10, id: \.self) { i in
                VStack{
                    HStack(spacing: 16){
                        VStack(alignment: .leading){
                            Text("User name")
                                .font(.title2)
                                .fontWeight(.semibold)
                            Text("last message")
                        }
                        Spacer()
                        Text("22d")
                            .font(.body)
                            .fontWeight(.semibold)
                        
                    }
                    Divider()
                    
                }
                .padding()
                
                
            }
        }
        
        
        .overlay(Button {
            
        } label: {
            HStack {
                Spacer()
                Text("+ New Message")
                    .font(.system(size: 16, weight: .bold))
                Spacer()
            }
            .foregroundColor(.white)
            .padding(.vertical)
            .background(Color.blue)
            .cornerRadius(32)
            .padding(.horizontal)
            .shadow(radius: 15)
        }, alignment: .bottom)
    }
}

#Preview {
    Overlay()
}
