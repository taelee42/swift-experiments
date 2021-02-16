import UIKit

// Forced unwrapping
//var name:String?
//name = "pikachu"
//print(name!)


// Optional binding (if let)

//var name:String?
//name = "IronMan"
//
//if let unwrappedName = name {
//    print(unwrappedName)
//} else {
//    print("Failed to Unwrapping")
//}

//var name:String?
//name = nil
//
//if let unwrappedName = name {
//    print(unwrappedName)
//} else {
//    print("Failed to Unwrapping")
//}

// Optional binding (guard)

//var name:String?
//name = "IronMan"
//
//func printAndParse(name: String?) {
//    guard let unwrappedName = name else {
//        print("Failed to Unwrapping")
//        return
//    }
//    print(unwrappedName)
//}
//
//printAndParse(name: name)


// Nil coalescing

var name:String?
name = "Hulk"

let newName = name ?? "noName"

print(newName)
