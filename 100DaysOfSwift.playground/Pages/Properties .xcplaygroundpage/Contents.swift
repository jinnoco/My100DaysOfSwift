import UIKit

struct Person {
    var clothes: String {
        willSet { //プロパティが変更される前に呼び出される
            updateUI(msg: "I'm changing from \(clothes) to \(newValue)")
        }
        didSet { //プロパティが変更された後に呼び出される
            updateUI(msg: "I just changed from \(oldValue) to \(clothes )")
        }
    }
    
    func updateUI(msg: String) {
        print(msg)
    }
    
}

var Taro = Person(clothes: "shirts")
//プロパティ変更
Taro.clothes = "hoodie"
//I'm changing from shirts to hoodie
//I just changed from shirts to hoodie


struct Person2 {
    var age: Int
    var ageInDogYears: Int {
        get {
            return age * 7
        }
    }
}

var fan = Person2(age: 23)
fan.ageInDogYears //161


struct Japanese {
    static var live = "Japan"
    var name: String
    var age: Int
}

let people = Japanese(name: "Kazu", age: 24)
print(Japanese.live) //Japan
