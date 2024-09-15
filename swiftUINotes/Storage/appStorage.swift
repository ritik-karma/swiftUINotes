//MARK: Advanced Ver. of User Defaults storage method.


/// wht userDefault do it will do it automatically
// Bundle = app files

import SwiftUI

struct appStorage__adv_userD_: View {
    @AppStorage("tap") var tapCount = 0
    //Given tap as key
    
    var body: some View {
        Button("Tap Count is \(tapCount)"){
            tapCount += 1
        }
        .buttonStyle(BorderedButtonStyle())
        
        Button("Clear saved info"){
            if let BundleID = Bundle.main.bundleIdentifier{
                UserDefaults.standard.removePersistentDomain(forName: BundleID)            }
        }
    }
}

#Preview {
    appStorage__adv_userD_()
}
