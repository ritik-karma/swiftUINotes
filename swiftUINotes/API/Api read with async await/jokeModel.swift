//
//  jokeModel.swift
//  swiftUINotes
//
//  Created by Ritik Karma on 11/21/24.
//

import Foundation

struct Joke: Codable{
    let setup: String
    let delivery: String
}


//
//{
//    "error": false,
//    "category": "Programming",
//    "type": "single",
//    "joke": "Java and C were telling jokes. It was C's turn, so he writes something on the wall, points to it and says \"Do you get the reference?\" But Java didn't.",
//    "flags": {
//        "nsfw": false,
//        "religious": false,
//        "political": false,
//        "racist": false,
//        "sexist": false,
//        "explicit": false
//    },
//    "id": 4,
//    "safe": true,
//    "lang": "en"
//}
