import Foundation

struct Stage: Codable {
    let id: Int
    let tileInfo: [Int]
}

func randomNumberGen() -> Array<Int> {
    let sequence = 0 ..< 27
    let shuffledSequence = sequence.shuffled()
    let sliced = shuffledSequence[0...8]
    return Array(sliced)
}


let stage1 = Stage(id: 1, tileInfo: randomNumberGen())

let encoder = JSONEncoder()
let decoder = JSONDecoder()

let data = try encoder.encode(stage1)
let string = String(data: data, encoding: .utf8)!

print(data)
print(string)
