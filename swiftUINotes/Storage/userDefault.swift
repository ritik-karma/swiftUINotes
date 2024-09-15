//MARK: use appStorage (which is advance)


///used to store frequently used data withiin the app. it will keep after refreshing it also

import SwiftUI

struct storageUserDefault: View {
    
    @State var tapCount = UserDefaults.standard.integer(forKey: "tap")
    
    var body: some View {
        
        
        Button("Tap count = \(tapCount)"){
            
            tapCount += 1
            
            UserDefaults.standard.set(tapCount, forKey: "tap")
            ///stores as dictionary value,key
            
        }
        .buttonStyle(BorderedButtonStyle())
        .padding()
        
        Button("Clear Saved info"){
            UserDefaults.standard.removeObject(forKey: "tap")
        }
     
    }
}

#Preview {
    storageUserDefault()
}
