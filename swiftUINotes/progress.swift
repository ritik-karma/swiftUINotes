//
//  progress.swift
//  swiftUi-Notes
//
//  Created by Ritik Karma on 07/08/24.
//

import SwiftUI

struct progress: View {
    @State var progressValue = 0.0
    var body: some View {
        Text("Progess Data \(progressValue, specifier: "%.2f")")
        ProgressView(value: progressValue)
            .background(.purple)
        Button("Start Download"){
            for i in 1...90{
 ///we won't download this in main threat because UI thread should nt be bothered while downloading
                DispatchQueue.main.asyncAfter(deadline: .now()+Double(i)/10.0){
                    progressValue = Double(i)/100.0
                    
///Stopped at 90 because loop limit
                }
                
            }
        }
    }
}

#Preview {
    progress()
}
