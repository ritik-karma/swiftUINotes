
///Similar to ScrolView but more organised like a list
///can add any item in list butto, slidder, image etc
///Can run loop in list without using forEach clause also but not recomended
///similar to form but better for similar or related types (showcasing)
///If want to add multi item in a row can also use grid
/// List By default has a lazy loading
import SwiftUI

struct list: View {
    
    var samples = ["meal",
                   "vegBowl",
                   "pastry",
                   "pizza",
                   "sandwich",
                   "apple",
                   "casual_male",
                   "administrator_male"]
    ///Good to create a seperate file as sampleModel array
    
    let cate = ["fish", "bone"]
    var body: some View {
        NavigationStack{
            
            //MARK: List 1st
            List {
                Section ("Items = \(samples.count)"){
                    ForEach(samples, id: \.self) { i in
                        HStack{
                            Image("apple")
                                .resizable()
                                .frame(width: 30, height: 30)
                            VStack(alignment: .leading, spacing: 10){
                                Text("item:")
                                    .bold()
                                Text(i)
                            }
                            
                        }
                    }
                    
                }
                
                Section ("Categories") {
                    ForEach(cate, id: \.self) {
                        //if you use stack in here then shorthand argument'$' will not be applicable
                        Text("likes : \($0)") ///can go with this also
                        ///$0: Used for accessing only 1 element
                            .listRowSeparator(.hidden)
                    }
                }
                Text("this is without loop")
                Text("this is without loop")
                
            }
                        .navigationTitle("Items")
            
        }
        //MARK:  List 2nd
        NavigationStack{
            List {
                Section{
                    Text("this is without loop")
                    HStack{
                        Image("apple")
                            .resizable()
                            .frame(width: 30, height: 30)
                        Text("Apple Logo")
                    }
                    NavigationLink{
                        form()
                    } label: {
                        Text("Click here to Open form")
                            .font(.title)
                            .foregroundStyle(.blue)
                    }
                }
            header:{
                Text("header")
            }
            footer:{
                Text("This is footer")
            }
            
            }
            
            //MARK: Another method of list
            List(samples, id: \.self){ item in
                Text(item)
            }
          
            
            
        }
        
        
        
        
        }
    }
    ///* also can loop with list only without using loop but its not prefered it has some problems







#Preview {
    list()
}
