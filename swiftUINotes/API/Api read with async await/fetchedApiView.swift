//
//  fetchedApiView.swift
//  swiftUINotes
//
//  Created by Ritik Karma on 11/21/24.
//

import SwiftUI

struct fetchedApiView: View {
    @State var joke: Joke?
    @State var isLoading = false
    var body: some View {
        VStack{
            if let jokeData = joke {
                Text(jokeData.setup)
                    .font(.title)
                    .padding()
                Text(jokeData.delivery)
                    .font(.headline)
            }
            
                Button {
                    Task{
                    isLoading = true
                        do {
                            joke = try await fetchJoke()
                        } catch {
                            print("failed to fetch with \(error)")
                        }
                       isLoading = false
                    }
                } label: {
                    
                    
                    if isLoading {
                        ProgressView()
                            .progressViewStyle(.automatic)
                    }
                    else{
                        Text("Tap to fetch a Joke!")
                    }
                }
                .buttonStyle(.bordered)
            
            
        }
        .multilineTextAlignment(.center)
        
    }
}

#Preview {
    fetchedApiView()
}
