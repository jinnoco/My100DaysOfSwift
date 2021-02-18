import UIKit

protocol Identifiable {
    var id: String { get set }
}

//プロトコルの適合
struct User: Identifiable {
    var id: String
}

func displayId(thing: Identifiable){
    print("My Id is \(thing.id)")
}

protocol Payable {
    func calcableWages() -> Int
}

protocol NeedsTraining {
    func study()
}

protocol HasVacation {
    func takeVacation(days: Int)
}

protocol Employee: Payable, NeedsTraining, HasVacation{
    
}

//一辺の長さがIntの正方形の面積の値を返す拡張機能
extension Int {
    func squared() -> Int {
        return self * self
    }
}

let number = 17
print(number.squared())

print("------")

//Intが偶数だったらtrueを返す拡張機能
extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
}

let number2 = 34
print(number2.isEven)
