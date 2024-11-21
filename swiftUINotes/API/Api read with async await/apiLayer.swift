//
//  apiLayer.swift
//  swiftUINotes
//
//  Created by Ritik Karma on 11/21/24.
//

import Foundation

func fetchJoke() async throws -> Joke {
    let url = URL(string: "https://v2.jokeapi.dev/joke/Programming?type=twopar")!
    let request = URLRequest(url: url)
    let (data, _) = try await URLSession.shared.data(for: request)
    let joke = try JSONDecoder().decode(Joke.self, from: data)


    return joke
}




