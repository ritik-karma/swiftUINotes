//
//  fileCreation.swift
//  swiftUi-Notes
//
//  Created by Ritik Karma on 08/06/1946.
//

import SwiftUI

struct fileCreation: View {
    
    
    var body: some View {
        Button("Write & read data"){
            
            //input data
            let data = Data("Hello, World!".utf8)
///Data() = converting text into data object (binary)
            
            //creating a fill in divice as message.txt
            let url = URL.documentsDirectory.appending(path: "message.txt")
           
            
            do{
                //write
                try data.write(to: url, options: [.atomic,.completeFileProtection])
                //read
                let input = try String(contentsOf: url)
                print(url)
                print(input)
            }
            catch {
                print(error.localizedDescription)
            }
            
        }
        
    }
}

#Preview {
    fileCreation()
}
