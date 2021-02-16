//import UIKit


//let array = [1, 2, 3, 4]
//let newArray = array.map{ $0 * 5 }
//print(newArray) //[5, 10, 15, 20]

//let array = [1, 2, 3, 4]
//func multiply5 (a: Int) -> Int {
//    return a * 5
//}
//let newArray = array.map(multiply5)
//print(newArray) //[5, 10, 15, 20]

//let array = [1, 2, 3, 4]
//let multiply5: (Int) -> Int = { (a:Int) -> Int in
//    return a * 5
//}
//let newArray = array.map(multiply5)
//print(newArray) //[5, 10, 15, 20]

//let array = [1, 2, 3, 4]
//let multiply5: (Int) -> Int = { a in
//    return a * 5
//}
//let newArray = array.map(multiply5)
//print(newArray) //[5, 10, 15, 20]


//let array = [1, 2, 3, 4]
//let multiply5: (Int) -> Int = { $0 * 5}
//let newArray = array.map(multiply5)
//print(newArray) //[5, 10, 15, 20]


//let array = [1, 2, 3, 4]
//let newArray = array.map({ (a:Int) -> Int in
//    return a * 5
//})
//print(newArray) //[5, 10, 15, 20]

let array = [1, 2, 3, 4]
let newArray = array.map({ a in
    return a * 5
})
print(newArray) //[5, 10, 15, 20]

//let array = [1, 2, 3, 4]
//let newArray = array.map({ $0 * 5 })
//print(newArray) //[5, 10, 15, 20]




//아래는 사용안한 예제
var add1: (Int, Int) -> Int = { (a:Int, b:Int) -> Int in
    return a + b
}

var add2: (Int, Int) -> Int = {a, b in
    return a + b
}

var add3: (Int, Int) -> Int = { $0 + $1 }

print(add1(3, 8))
print(add2(3, 8))
print(add3(3, 8))


func operateTwoNum(a: Int, b: Int, opertion: (Int, Int) -> Int) -> Int {
    let result = opertion(a, b)
    return result
}

operateTwoNum(a: 4, b: 2) { a, b in
    return a / b
}





// Capturing Values

var count = 0

let incrementer = {
    count += 1
}

incrementer()
incrementer()
incrementer()
incrementer()

count
