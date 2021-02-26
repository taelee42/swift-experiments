import UIKit

var a = [[0,1,2], [1,2,3]]

var b  = a

print(b)
b = b.filter({$0 != [0,1,2]})
print(b)
print(a)
