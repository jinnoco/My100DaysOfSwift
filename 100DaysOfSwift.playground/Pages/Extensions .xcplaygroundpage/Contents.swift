import UIKit

var myInt = 0

extension Int {
    mutating func plusOne() {
         self += 1
    }
}
/*
自身の値を変更する場合、funcの前にmutatingキーワードを書く
再代入が行われるため、mutatingなメソッドは定数に対しては実行できない
*/

myInt.plusOne() //1
myInt //0 元の値は変更されていない



