//
//  datePicker.swift
//  swiftUi-Notes
//
//  Created by Ritik Karma on 10/08/24.
//
//
import SwiftUI

struct datePicker: View {
    
 
    @State var date = Date.now
    var body: some View {
        DatePicker("Plese select date", selection: $date, displayedComponents: [.date, .hourAndMinute])
        ///display component is optional to choose which one we want date OR time OR both
        
            .datePickerStyle(.compact)
        
        //for changing date formate UI
            .environment(\.locale, .init(identifier: "en"))
        ///en = english date formate
    
        
        
        Text("Date is \(date)")
    }
}

#Preview {
    datePicker()
}
