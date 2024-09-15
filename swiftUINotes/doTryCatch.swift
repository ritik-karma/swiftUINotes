
//used for error handling in situations where an operation could potentially fail. OR Handling Errors.
/*
  
  'catch' keyword is used to catch and handle errors that are thrown by the try block.
 
 'Throws'  keyword used that this block of code  can potential throws an error. It requires the use of try
 
 'try' keyword is used before a piece of code that can potentially throw an error.It requires do/catch unless you use try? or try!, which is not safe or requires optionals.
 it comes under 'do' block
 
 Function or property that 'tries' can 'catch' errors that are 'thrown' and handle them

 */


import SwiftUI



struct doTryCatch: View {
    
    //Lets create some personal error
    
    enum EncryptError: Error {
        case empty
        case weak
    }
    
    func encriptor (_ message: String, pass: String) throws -> String {
        
        guard !pass.isEmpty else { throw EncryptError.empty}
        guard pass.count > 5 else { throw EncryptError.weak}
        
        let encripted = pass + message + pass
        return  String(encripted.reversed())
    }
    
    
    
    var encriptedMessage: String{
        do {
            return try encriptor(message, pass: "1224")
        }
        catch EncryptError.weak {
            return "pass too weak"
        } catch EncryptError.empty {
            return "pass can't be empty"
        } catch {
            return "Encryption Failed with an unkwon \(error)"
        }
        
        //OR
//        catch{
//            return "Encryption Failed: \(error)"
//        }
         
    }
    
var message = "Hello World! "
    
    
    var body: some View {
        Text("Message: \(message)")
        Text("Encripted Message: \(encriptedMessage)")

    }
}

#Preview {
    doTryCatch()
}
