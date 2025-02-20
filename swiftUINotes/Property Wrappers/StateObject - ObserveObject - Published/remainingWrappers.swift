







import SwiftUI

class Numbers: ObservableObject {
    ///* ObservableObject  is a protocol that enables data to be shared across multiple views in your app while maintaining synchronization.
    @Published var num: Int = 0
    /// * @Published property is used inside observableObject  class to automatically notify subscribers when   a property’s value changes.
}
///Created custom type with the help of ObservableObject so we can use it later



struct remainingWrappers: View {
    @StateObject var number = Numbers()
   
    //Can't use State because using custom type
    ///State obj only init when app restart but observeObj initi whenever view is refreshed
    ///In this case we can also use observedObj but we choose this because have to retain the value (drawback)
    
    var body: some View {
        VStack(spacing: 100){
            VStack{
                
                Text("\(number.num)")
                Button{
                    number.num = Int.random(in: 0...50)
                } label: {
                    Text("Generate number")
                    
                }
                .buttonStyle(.borderedProminent)
                .tint(.blue)
                
                
                secondview()
                    .environmentObject(number)
                
                ThirdView(number: Numbers())
                FourthView(value: number.num)
                //taking value from this view
                    
                
            }
            
            .padding(40)
            .background(Color.yellow.clipShape(.rect(cornerRadius: 40)))
        }
        
        
    }
    
}

//MARK: environment object
struct secondview: View {
    @EnvironmentObject var number: Numbers
    /// @Environment can be accessible anywhere within the app
    var body: some View {
        Text("\(number.num)")
       
    }
}



//MARK: Observed object
///Whenever view refresh it initiallize from default
struct ThirdView: View {
    @ObservedObject var number: Numbers
    var body: some View {
        Text("\(number.num)")
        
    }
}

//MARK: share value
struct FourthView: View {
    var value: Int
    ///will take value from that where this view used
    var body: some View {
        Text("\(value)")

    }
}

#Preview {
    remainingWrappers()
}


