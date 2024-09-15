
/*
|                 @SwiftUi                |
|View <--------  State  <-------- Action  |  <---------- User Action / External Event
|       updates           mutation        |    interaction

*/
//MARK: -> State & Binding :- Store & Observe values
///The diff b/w them are state var owns the value (var count = 0) & binding var refer to the value (var count: Int).



//MARK: State
///* @State is used to modify property. it tells that this property will change over time. so if property change then swiftUi will know & it changes the view as per the property.
///*  In SwiftUI, @State is a property wrapper used to create and manage mutable state within a view. It's a fundamental concept that allows you to store and track changes to a value so that your view can automatically update whenever that value changes. @State is used primarily for managing small amounts of mutable data that are specific to a single view.


/// If i use private after @State then the property num can only be used and changed within the same file where it's declared. Nobody outside of that file can see or change it. Or we can also say that below body where private is declared no body can use that var

/// "$" $ Sign: When you put $ in front of @State, like $showModal, you're saying, "Hey SwiftUI, create a connection to this data." It's like setting up a wire between your UI and the stored data.

//MARK: Binding (Refrence type)
///* @Binding creates a link to a @State property. We cannot create @Binding without @State. @State property is the origin. Modifying @Binding modifies original @State
/// Binding is used to make changes in @state
/// Passing data between 2 views with @binding

///Because structs are immutable so we can't change the value . here @State comes in help
///
/*
#imageLiteral(resourceName: "Screenshot 2024-05-20 at 12.28.00 PM.png")
*/
//MARK: -
import SwiftUI

struct State_Binding: View {
    @State var num = 0      ///It should be always var because let gives an error because let has no sense of use here
    @State var isON = false
    @State var showSheet = false
    var body: some View {
            VStack(spacing: 100){
                VStack{
                    Button("Increse to \(num + 1)"){
                        if (num < 10) {
                            num += 1
                        }
                    }
                    .font(.title)
                    .padding()
                    Text("Number = \(num)")
                    footerView(bindingNum: $num)
                }
                .background(.white)
                .padding()
                .background(.yellow) ///It dosen't applied to whole because the white background is already occupied in inner side so remaining background will be yellow.
                
                
                
                VStack{
                    Image(systemName: "lightbulb")
                        .font(.largeTitle)
                        .symbolVariant(isON ? .fill : .none)
                        .foregroundStyle(isON ? .yellow : .black)
                    Toggle(isOn: $isON)  {
                        /*@START_MENU_TOKEN@*/Text("Label")/*@END_MENU_TOKEN@*/
                    }
                    .labelsHidden()        }
                Button("Show Binding Flow diag") {
                    showSheet = true
                }
                    .font(.largeTitle)
                    .foregroundStyle(.blue)
                    .sheet(isPresented: $showSheet){
                        Image("Binding")
                            .resizable()
                            .scaledToFit()
                    }
            
        }
    }
}


struct footerView: View {
    @Binding var bindingNum: Int
    ///Can name it to same "num" also
    ///Binding with num while implementing, so changing this can change num also
    ///There should be return value as binding while using footerView(bindingNum: $_____)
    var body: some View {
        Button("End"){
            bindingNum = 0
        }
    }
}

#Preview {
    State_Binding()
}
