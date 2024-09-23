import SwiftUI

struct User: Codable {
    let username: String
    let occupation: String
}



if
    ///Step 1 : Get path to the Data.json file
    let path = Bundle.main.path(forResource: "Data", ofType: "json"),
    ///Step 2 : Get the contents of the file as data so we can use that
    let data = FileManager.default.contents(atPath: path) {
    
    let decode = JSONDecoder() ///Converts binary to data
    let user = try decode.decode([User].self, from: data)
    dump(user)  //detail print

    
    let encode = JSONEncoder() //Data to Binary(JSON format)
    let data = try encode.encode(user)
    dump(data)
    
    dump(String(data: data, encoding: .utf8)) ///attempts to convert the binary data into a human-readable JSON string and prints it.
    
}

