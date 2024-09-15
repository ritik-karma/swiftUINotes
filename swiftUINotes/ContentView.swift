

import SwiftUI

struct ContentView: View { ///Created a structues with name ContentView and type is View (Predifined) . In which every element initially having predefined size frame.
    
    ///above the body we create an array or func or variable  or other stuff because after body there will be views
    
    var body: some View {   ///This body is type of view and its returning Text view .also it is opaque type view(some clause is opaque type). It only returns view but in some cases like Button where we are performing some action we can use var also change it where we should use only code not views.
        ///some view means i don't know what it will return but it will return some view
           ///Inside the curly is 'computed property' (update automatically when the dependencies is changes) which is giving to the variable body which has a type of some view
       
        
        
            
            Text("Hello, world!")
                .position(x:0,y:0) //frame = screen size, takes from centre of the text
                //.offset(x:,y:)// frame will be as it is but the text will move by xy
            //  Print("swift") ///got error because its statement not view
                .frame(width: 100, height: 190)
               ///frame only accept CGFloat value data types instead of Int
        ///har koi cheej jo  UI me hai vo CG___ hi leti hai input me
    }
}

#Preview {
    ContentView()
}

///We can go preiview oreintation with  code also
///Created 3 more preciews
struct ContentView_Provider: PreviewProvider{
    static var previews: some View{
        ContentView()
            .previewDevice("iPhone 12 Pro")
        ContentView()
            .preferredColorScheme(.dark)
        ContentView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

///Opaque type:-  is a data type whose concrete data structure is not defined in an interface (Hide the return type.) . you should go inside it to know what its returning. Bottom -> Top almost opposite of func.
