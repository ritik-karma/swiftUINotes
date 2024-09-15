//
//  ex.swift
//
//
//  Created by Ritik Karma on 14/05/24.
//

import SwiftUI

struct ex: View {
    @State var isON = false
    var body: some View {
        Image(systemName: "lightbulb")
            .font(.largeTitle)
            .symbolVariant(isON ? .fill : .none)
            .foregroundStyle(isON ? .yellow : .black)
        Toggle(isOn: $isON)  {
            /*@START_MENU_TOKEN@*/Text("Label")/*@END_MENU_TOKEN@*/
        }
        .labelsHidden()
    }
}

#Preview {
    ex()
}
