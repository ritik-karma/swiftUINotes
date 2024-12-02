//
//  timer.swift
//  swiftUINotes
//
//  Created by Ritik Karma on 11/24/24.
//

import SwiftUI

struct timer: View {
    let timerValue = Timer.publish(every: 1, tolerance: 0.5,on: .main, in: .common).autoconnect() //on main thread
    @State var counter = 0
    var body: some View {
        Text("Hello Timer!")
            .onReceive(timerValue) { time in
                if counter >= 10 {
                    timerValue.upstream.connect().cancel()
                    
                } else {
                    print("Coundown \(time)")
                }
                counter += 3
                
            }
    }
}

#Preview {
    timer()
}
