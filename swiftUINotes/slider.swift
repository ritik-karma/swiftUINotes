//
//  slider.swift
//  swiftUi-Notes
//
//  Created by Ritik Karma on 07/08/24.
//

import SwiftUI

struct slider: View {
    @State var sliderValue = 0.00
    @State var isEditing = false
    
    var body: some View {
        VStack{
            Slider(value: $sliderValue, in: 0...20, onEditingChanged: { edit in
                isEditing = edit
                
            })
            Text("\(sliderValue, specifier:"%.2f" )")
            ///Specifier: The specifier parameter in Text allows you to format numeric values with specific precision and formatting rules. In your code
            ///&.2f: %.2f: This specifier formats the number to two decimal places as a floating-point number.
                .foregroundStyle(isEditing ? .red : .blue)
                .font(.title)
        }
        .padding()
        HStack{
            Text("\(sliderValue, specifier:"%.2f" )")
                .foregroundStyle(isEditing ? .red : .blue)
                .font(.title)
            Slider(value: $sliderValue, in: 0...20, onEditingChanged: { edit in
                isEditing = edit
                
            })
            Text("\(sliderValue, specifier:"%.2f" )")
                .foregroundStyle(isEditing ? .red : .blue)
                .font(.title)
        }
    }
}

#Preview {
    slider()
}
