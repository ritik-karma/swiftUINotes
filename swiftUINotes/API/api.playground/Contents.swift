//Encoding: Data to binary

import SwiftUI

struct Occupation: Codable {
    let name: String
    let isActive: Bool
}


struct User: Codable {
    let username: String
    let id: Int
    let firstName: String
    let lastName: String?    //Made it Optional so it can be nill also
    let occupation: Occupation
    let dateOfBirth: Date
    
    //Enum will be used for mapping JSon keys & struct var if JSON key's are diff from structs keys like in this case is id/userID.
    enum CodingKeys: String, CodingKey {
        case id = "userID"
        case firstName
        case lastName
        case username
        case occupation
        case dateOfBirth
    }
}



if
    ///Step 1 : Get path to the Data.json file
    let path = Bundle.main.path(forResource: "Data", ofType: "json"),
    ///Step 2 : Get the contents of the file as data so we can use that
    let data = FileManager.default.contents(atPath: path) {
    
    let decode = JSONDecoder() ///Converts binary to data
    
    //Decoding Strategies
    decode.keyDecodingStrategy = .convertFromSnakeCase  
    decode.dateDecodingStrategy = .iso8601 //decode dates in iso formate
    
    
    let user = try decode.decode([User].self, from: data)
    dump(user)  //detail print

    
    let encode = JSONEncoder() //Data to Binary(JSON format)
    let data = try encode.encode(user)
    dump(data)
    
    dump(String(data: data, encoding: .utf8)) ///attempts to convert the binary data into a human-readable JSON string and prints it.
    
}

