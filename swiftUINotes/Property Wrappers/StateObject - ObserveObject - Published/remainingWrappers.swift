

//MARK: Same ex with custom datatype class

/// @StateObject private var thing = Something()
/// @ObservedObject private var thing: Something
/// *   @Published is used inside observableObject  class to automatically notify subscribers when      a property’s value changes.



import SwiftUI

class Something: ObservableObject {
    @Published var num = 0
}
///Created custom type with the help of ObservableObject so we can use it later

struct remainingWrappers: View {
    @StateObject var thing = Something()
    //Can't use State because using custom type
    
    var body: some View {
            VStack(spacing: 100){
                VStack{
                    Button("Increse to \(thing.num + 1)"){
                        if (thing.num < 10) {
                            thing.num += 1
                        }
                    }
                    .font(.title)
                    .padding()
                    Text("Number = \(thing)")
                    footerView1(bindingNum: thing)
                }
                .background(.white)
                .padding()
                .background(.yellow)
                
            
        }
    }
}


struct footerView1: View {
    @ObservedObject var bindingNum: Something
    var body: some View {
        Button("End"){
            bindingNum.num = 0
        }
    }
}

#Preview {
    remainingWrappers()
}


