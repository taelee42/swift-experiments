import UIKit

enum CompassPoint {
    case north
    case south
    case east
    case west
}

var directionToHead = CompassPoint.west
print(directionToHead)
directionToHead = .east //한번 해당 enum으로 초기화된적이 있으면 CompassPoint.east에서 CompassPoint생략가능
print(directionToHead)

var direction = CompassPoint(1)
print(direction)


//let somePlanet = Planet.earth
//
//switch somePlanet {
//case .earth:
//    print("Mostly harmless")
//default:
//    print("Not a safe place for humans")
//}
//// Prints "Mostly harmless"
//
//enum Color: CaseIterable {
//    case red, green, blue
//}
//
//for color in Color.allCases{
//    print(color)
//}
