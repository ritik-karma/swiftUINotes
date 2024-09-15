
import SwiftUI

struct readApiData: View {
    
    //MARK: Data structure api name should be same as name on api
    struct Result:Codable{
        var trackID, trackName, collectionName: String
    }
    
    struct Results: Codable{
        var results : [Result]
    }
    
    
    
    func loadData() async{
        
        //write code to load data from  url/api and store in our data model
       
    }
    
    var body: some View {
        
        @State var results = [Result]()
        
        //using trackID as a unique identifier for each element
        List(results, id: \.trackID){ item in
            VStack(alignment: .leading){
                Text("\(item.trackName)")
            }
            
        }
        .task {
            await loadData() //wait till loadData() completed
        }

    }
}

#Preview {
    readApiData()
}
