//
//  SwiftUIView(eatsMenu).swift
//  swiftUiBasics
//
//  Created by Ritik Karma on 28/01/24.
//

import SwiftUI

struct SwiftUIView :View {
    var dishImage = ["meal","vegBowl", "pastry", "pizza","sandwich"]
    var body: some View {
        VStack(alignment: .leading) {
            Text("Featured on Uber Eats")
                .font(.title2)
                .fontWeight(.semibold)
            ScrollView  {
                VStack(alignment: .leading){
                    
                    
                    
                    ForEach(dishImage, id: \.self){i in
                        Image(i)
                            .resizable()
                            .scaledToFill() ///it dose't work after declaring frame
                            .frame(width: 370, height: 180)
                            .cornerRadius(12)
                            .padding(.top)
                        
                        Text(i)
                            .font(.subheadline)
                        Text("$ 0.99 Delivery Free")
                            .foregroundStyle(.gray)
                        
                            .font(.subheadline)
                    }
                }
            }
            .scrollIndicators(.hidden)
        }
    }
}

#Preview {
    SwiftUIView()
}
