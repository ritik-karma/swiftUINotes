//
//  stepper.swift
//  swiftUi-Notes
//
//  Created by Ritik Karma on 04/08/24.
//

import SwiftUI

struct stepper: View {
    @State var stepperValue = 8.0
    var body: some View {
        Stepper(value: $stepperValue, in: 4...12, step: 0.50){
            Text("\(stepperValue.formatted()) hours")
            Text("\(stepperValue)")
            

        }
        .padding()
    }
}

#Preview {
    stepper()
}
