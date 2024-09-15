//
//  ColourPicker.swift
//  swiftUi-Notes
//
//  Created by Ritik Karma on 10/08/24.
//

import SwiftUI

struct ColourPicker: View {
    @State var selectColour = Color.green
    var body: some View {
        
        ColorPicker("Selct Colour here -> ", selection: $selectColour)
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(selectColour)
        
        
        
        
    }
}

#Preview {
    ColourPicker()
}
