
var arrayOfLetters = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]

func numLetter () {
    var num = 1
    for i in arrayOfLetters {
        print(num, terminator: ",")
        print(i, terminator: ",")
        
        num += 1
    }
}


numLetter()
