

import UIKit

// MARK: - Singleton

public class MySingleton {
  static let shared = MySingleton()
    var name = "Hulk"
  private init() { }
}

let mySingleton = MySingleton.shared
mySingleton.name = "Iron Man"
let mySingleton2 = MySingleton.shared
print(mySingleton.name)

// MARK: - Singleton Plus
let defaultFileManager = FileManager.default
let customFileManager = FileManager()

public class MySingletonPlus {
  static let shared = MySingletonPlus()
    var name = "Hulk"
  public init() { }
}
let singletonPlus = MySingletonPlus.shared
singletonPlus.name = "Bat Man"
let singletonPlus2 = MySingletonPlus()
print(singletonPlus2.name)

