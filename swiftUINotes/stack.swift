//MARK: -> NavigationStack
/// Used to navigate to another screen
/// Must use NavStack for using NavLink

//MARK: -> Lazy
///*  LazyVStack which is more optimised because it renders only those item which is on screen instead of all items . can save memory in device. (Mostly use in ScrolView)

/// .overlay == zstack

import SwiftUI

struct Stacks: View {
    var body: some View {
        NavigationStack{
            ZStack(alignment: .topLeading){
                Color(.purple)
                    .ignoresSafeArea()
                
                Rectangle()
                    .fill(.cyan)
                    .frame(width: 250, height: 350)
                    .cornerRadius(10)
                VStack(alignment: .leading, spacing: 40){   //spacing between each elemement also use -
                    Text("________")
                        .foregroundStyle(.white)
                    Text("world!")
                    
                }
                HStack(alignment: .bottom, spacing: 190) {//must alignment before spacing
                    Rectangle()
                        .fill(.yellow)// can't use fill after .frame
                        .frame(width: 50, height: 100)
                    Rectangle()
                        .fill(.blue)
                        .frame(width: 50, height:100)
                    
                }
                
                Text("hello my") //if i put text below rect. then cyan colour will hide it
                    .foregroundStyle(.white)
                    .bold()
            }
            
            
            VStack (alignment: .leading, spacing: 40){
                HStack{
                    Image(systemName: "person.circle")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    VStack(alignment: .leading){
                        Text("luis.lancha")
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        Text("luis lancha")
                        Divider()
                    }
                    
                }
                

                
                
 //MARK: -NavigationLink
                HStack {
                    NavigationLink{
                        imageAndSafearea()
                    } label: {
                        ///If i put this in the list then it will work without the label also
                        
                        Image(systemName: "person.circle")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        VStack(alignment: .leading){
                            Text("luicn1234")
                                .bold()
                            Text("kanta bichu")
                            Divider()
                            
                        }
                    }
                    .foregroundStyle(.purple)
                }
            }
            .padding()
        }
        .navigationTitle("yeee")
        .toolbarRole(.editor) //editor will remove "Back" text on back button
    }
    
}
#Preview {
    Stacks()
}
/*
 
 Can apply same modifiers to diffrent views without affecting its layout if you do not want to apply modifier to whole stack
 Group{
 //Views
 }
 .kjfs
 .sdkjflka
 
 */
