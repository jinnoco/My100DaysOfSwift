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




extension Int {
    func clamp(low: Int, high: Int) -> Int {
        if self > high {
            return high
            //上限よりも高かったら上限を返す
        } else if self < low {
            return low
            //下限よりも低かったら下限を返す
        }
        return self
        //範囲内であればそのまま返す
    }
}

let i: Int = 8
print(i.clamp(low: 0, high: 6)) //6
print(i.clamp(low: 0, high: 13)) //8
