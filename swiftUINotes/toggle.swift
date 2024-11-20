//
//  toggle.swift
//
//
//  Created by Ritik Karma on 17/05/24.
//

import SwiftUI

struct toggle: View {
    @State var isOn = false
    @State var isCheckBox = false
    
    var body: some View {
        VStack{
            Image(systemName: isOn ? "wifi" : "wifi.slash")
                .font(.largeTitle)
            Image(systemName: "lightbulb")
                .symbolVariant(isOn ? .fill : .none)
                .font(.largeTitle)
                .foregroundStyle(isOn ? .yellow: .black)
        
            Text("-----------------------------")
//MARK: toggle
            Toggle(isOn: $isOn, label: {
                Text("Switch")
                    .foregroundStyle(.white)
                    .frame(width: 80, height: 80)
                    .background(.gray)
                    .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
            })
            .padding(.top, 45)
            .labelsHidden()
            
//toggle in a button style
            Toggle(isOn: $isOn) {
                Text("toggle button")
            }
            .toggleStyle(.button)
            .padding()

            
            
            
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
            
            Text("-------CheckBox-------")
            
            Button{
                isCheckBox.toggle()
            } label: {
                if isCheckBox {
                    Image(systemName: "checkmark.circle.fill")
                        .resizable()
                        .frame(width: 30, height: 30)
                } else {
                    Image(systemName: "checkmark.circle")
                        .resizable()
                        .frame(width: 30, height: 30)
                    
                }
            }
            
            
            //MARK: Toggle with custom type
            
            Toggle(isOn: $isCheckBox) {
                Text("I agree to Terms and Conditions")
            }
            .toggleStyle(CheckBoxToggleStyle())
            .padding()
            
        }
    }
    // Custom Toggle View
     struct CheckBoxToggleStyle: ToggleStyle {
         func makeBody(configuration: Configuration) -> some View {
             HStack {
                 configuration.label
                 
                 //   Spacer()
                 Image(systemName: configuration.isOn  ? "checkmark.square" : "square")
                     .resizable()
                     .frame(width: 30, height: 30)
                     .onTapGesture {
                         configuration.isOn.toggle()
                     }
             }
         }
         
     }
}


#Preview {
    toggle()
}
