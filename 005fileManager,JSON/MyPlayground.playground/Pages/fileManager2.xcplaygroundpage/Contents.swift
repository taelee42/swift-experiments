import Foundation

let fileManager = FileManager.default

let documentURL = fileManager.urls(for: .documentDirectory, in: .userDomainMask)[0]

let dirURL = documentURL.appendingPathComponent("나는폴더다")

if !fileManager.fileExists(atPath: dirURL.path) {
    do {
        try fileManager.createDirectory(atPath: dirURL.path, withIntermediateDirectories: true, attributes: nil)
    } catch {
        NSLog("폴더 생성 실패")
    }
}
let fileURL = dirURL.appendingPathComponent("저장파일.txt")

let textString = NSString(string: "피카츄, 이 문장은 처음으로 저장된 문장이야")
try? textString.write(to: fileURL, atomically: true, encoding: String.Encoding.utf8.rawValue)

//파일 읽어오기

do {
    let text = try String(contentsOf: fileURL, encoding: .utf8)
    print("--> 첫번째 읽은 문장")
    print(text)
    let newText = NSString(string:text + "\n" + "새로운 문장을 추가했어요")
    try? newText.write(to: fileURL, atomically: true, encoding: String.Encoding.utf8.rawValue)
} catch let error {
    print(error.localizedDescription)
}

do {
    let text = try String(contentsOf: fileURL, encoding: .utf8)
    print("--> 두번째 읽은 문장")
    print(text)
} catch let error {
    print(error.localizedDescription)
}


do {
    try fileManager.removeItem(at: fileURL)
} catch let error {
    print(error.localizedDescription)
}
