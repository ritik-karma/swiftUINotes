//
//  listWithSearch.swift
//  swiftUi-Notes
//
//  Created by Ritik Karma on 03/08/24.
//

import SwiftUI


struct listWithSearch: View {
    var filterName:[String]{
        if searchText.isEmpty {
            return names
        } else {
            return names.filter {$0.contains(searchText.lowercased())
            }
        }
    }
    ///instead of this computed propperty can go with func also
    
    var names = ["kanja", "jamnu", "ajfk", "mumbai", "pune", "hathipala"]
    @State var searchText = ""

    
    
    var body: some View {
        NavigationStack{
            List{
                ForEach(filterName, id: \.self){ name in
                    HStack{
                        Image(systemName: "globe")
                        Text(name)

                    }
                    
                }
            }
            .searchable(text: $searchText, prompt: "search Text")
        ///text: -var in which text is stored-
        
            .navigationTitle("Name List")
        }
    }
}

#Preview {
    listWithSearch()
}
