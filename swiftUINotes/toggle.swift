//
//  toggle.swift
//
//
//  Created by Ritik Karma on 17/05/24.
//

import SwiftUI

struct toggle: View {
    @State var isOn = false
    
    var body: some View {
        VStack{
            Image(systemName: isOn ? "wifi" : "wifi.slash")
                .font(.largeTitle)
            Image(systemName: "lightbulb")
                .symbolVariant(isOn ? .fill : .none)
                .font(.largeTitle)
                .foregroundStyle(isOn ? .yellow: .black)
        
            
//MARK: toggle
            Toggle(isOn: $isOn, label: {
                Text("Switch")
                    .foregroundStyle(.white)
                    .frame(width: 80, height: 80)
                    .background(.gray)
                    .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
            })
            .labelsHidden()
            
            
            
//MARK: toggle in button
            Button {
                isOn.toggle()
            } label: {
                Text("Switch")
                .foregroundStyle(.white)
                .frame(width: 80, height: 80)
                .background(.gray)
                .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
                .padding()
            }
            

            
           
            
        }
    }
}

#Preview {
    toggle()
}
