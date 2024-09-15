//
//  popOver.swift
//  swiftUi-Notes
//
//  Created by Ritik Karma on 07/08/24.
//
//
import SwiftUI

struct popOver: View {
    @State var popOver = false
    @State var light = false
    var body: some View {
        Button("pop"){
            popOver.toggle()
        }
        .buttonStyle(BorderedButtonStyle())
        ///attachment achor: which point u want popover
        
        
        .popover(isPresented: $popOver, attachmentAnchor: .point( .topTrailing)){
            ///here wht data u wnt to show in this popover
            VStack{
                Text("hii")
                    .padding()
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .background(.green)
                    .presentationCompactAdaptation(.popover)
                Text("light Bulb click here \(Image(systemName: light ? "lightbulb.fill" : "lightbulb" ))")
                    .foregroundStyle(light ? .yellow : .black)
                    .padding()
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    
                    .presentationCompactAdaptation(.popover)
                    .onTapGesture {
                        light.toggle()
                    }
            }
            
            
            
        }
    }
}

#Preview {
    popOver()
}
