

import SwiftUI

struct retreiveData: View {
    
    func readFile() -> String {
        var content = ""
        
        //Getting File path
        if let fileUrl = Bundle.main.url(forResource: "textFile", withExtension: "text"){
            
            //Reading content as String
            if let fileContent = try? String(contentsOf: fileUrl ){
                print(fileContent)
                content = fileContent
                return fileContent
            }
        }
        return content
    }
    @State var logFile = ""
    
    
    var body: some View {
        Button("Retreive Data from file"){
            logFile = readFile()
        }
        TextEditor(text: $logFile)
    }
}

#Preview {
    retreiveData()
}
