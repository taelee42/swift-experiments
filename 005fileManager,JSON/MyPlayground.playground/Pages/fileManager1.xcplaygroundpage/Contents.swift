//import UIKit
import Foundation


let fileManager = FileManager.default

//배열로 반환해주기 때문에 첫번째 요소만 빼와야 주소가 된다.
let documentURL = fileManager.urls(for: .documentDirectory, in: .userDomainMask)[0]

print(documentURL)

let fileURL = documentURL.appendingPathComponent("저장파일.txt")
print(fileURL)

let textString = NSString(string: "저장할 내용입니다")
try? textString.write(to: fileURL, atomically: true, encoding: String.Encoding.utf8.rawValue)


let dirURL = documentURL.appendingPathComponent("나는폴더다")

print(dirURL)  //이대로는 struct임
// %E1%84%82%E1%85%A1%E1%84%82%E1%85%B3%E1%86%AB%E1%84%91%E1%85%A9%E1%86%AF%E1%84%83%E1%85%A5%E1%84%83%E1%85%A1
print(dirURL.path)
// /Users/taelee/Library/Developer/XCPGDevices/6E55D3B6-C54B-4644-829D-A1A70667CD26/data/Containers/Data/Application/0D32CCF2-0C3D-4DB0-851F-2748B49B4651/Documents/나는폴더다

if !fileManager.fileExists(atPath: dirURL.path) {
    do {
        try fileManager.createDirectory(atPath: dirURL.path, withIntermediateDirectories: true, attributes: nil)
    } catch {
        NSLog("폴더 생성 실패")
    }
}

//파일 읽어오기
do {
    let text = try String(contentsOf: fileURL, encoding: .utf8)
    print(text)
} catch let error {
    print(error.localizedDescription)
}

do {
    try fileManager.removeItem(at: fileURL)
} catch let error {
    print(error.localizedDescription)
}
