struct User: Codable {
    let username: String
    let occupation: String
}



if
    ///Step 1 : Get path to the Data.json file
    let path = Bundle.main.path(forResource: "Data", ofType: "json"),
    ///Step 2 : Get the contents of the file as data so we can use that
    let data = FileManager.default.contents(atPath: path) {
    
    let decode = JSONDecoder()
    let user = try decode.decode(User.self, from: data)
    
}


