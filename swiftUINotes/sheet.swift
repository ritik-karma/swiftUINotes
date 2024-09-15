//MARK: If we applied .fullScreenCover instead of .sheet then it cover full also we can't minimize after that without button

import SwiftUI


struct dismisSheet: View {
    @Binding var isPresented: Bool
    ///Can give any name, binding with showmodal while applying view. so changing this can change showmodal also
    var body: some View {
        Button("Dismis"){
            isPresented.toggle()
        }
    }
}


struct sheet: View {
    @State var showModal = false
    var body: some View {
        Button("Show Sheet"){
            showModal = true
           // print("IT is a modal")
        }
        .font(.title)
        .sheet(isPresented: $showModal){
///isPresented mean if showModal is true then only when sheet is applied
            ///if i move sheet down then show modal again turn false
            Text("This is a Sheet view")
            Spacer()
            dismisSheet(isPresented: $showModal)
///Swipe Down or click this button to change the state of showModel
            Spacer()
        }
    }
}

#Preview {
    sheet()
}
