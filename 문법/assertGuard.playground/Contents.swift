import UIKit

var value = 0
assert(value == 0)

value = 2
assert(value == 0,"값이 0이 아닙니다")


func guardTest(value: Int?){
    guard let value = value else {
        return
    }
}

guardTest(value: 2)
guardTest(value: nil)
