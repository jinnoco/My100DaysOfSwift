import UIKit

var age: Int?

age = nil
print(age) //nil

age = 20
print(age) //Optional(20)

print(age!)//20

print("-------")

var name: String? = nil

if let unwrapped = name {
    print("letters: \(unwrapped.count)")
} else {
    print("no name")
}

print("-------")

func greet(name: String?) {
    guard let unwrapped = name else {
        print("no name")
        return
    }
    print("Hello, \(name)!")
}

greet(name: nil)
greet(name: "nofprog")

print("------")


let str = "5"
let num = Int(str)!
print(num)
print(type(of: num))

print("------")

//暗黙的アンラップ型は、アクセスするときには明示的なアンラップがいらない（強制的にアンラップされる）型
// ! や if let が不要
var age2: Int! = nil
age2 = 12
print(age2) //Optional(12)
//アクセスした時に中身が空（nil）の場合はクラッシュ

print("-------")

func username(for id: Int) -> String?{
    if id == 1 {
        return "nofprog"
    }else{
        return nil
    }
}
let user = username(for: 1)
let user100 = username(for: 100) ?? "Anonymous"

print(user) //Optional("nofprog")
print(user100) //Anonymous

print("------")

let names = ["John", "Paul", "George", "Ringo"]
let beatles = names.first?.uppercased()
print(beatles)
/*
 ・オプショナルチェイニング
 メソッドやプロパティに「?」をつけて使う
 いちいちアンラップせずともメソッドやプロパティを使うことができる
 使おうとした値が「nil」の場合でも実行時エラーとならず、「Optional(nil)」が返ってくる。→ プログラムが落ちない
 「nil」の場合を含め、「Optional型」で返ってくる。
 プロパティやメソッドをつないで記述する時に便利。(途中で「nil」となった場合、後続の処理は中止する。)
 ＝つなげて記述することから、「Chaining」
 */

print("------")

enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    return true
}

try checkPassword("password")

//do {
//    try checkPassword("password")
//    print("enable")
//} catch {
//    print("You can't use this password")
//}

if let result = try? checkPassword("password") {
    print("result was \(result)")
} else {
    print("....")
}

try! checkPassword(<#T##password: String##String#>)
/*
 参照
https://youtu.be/r4U48jaTyVw
https://www.hackingwithswift.com/sixty/10/8/optional-try
 */

print("------")

//init? 失敗可能な初期化
struct Person{
    var id: String
    init?(id: String){
        //9文字以外の文字列だとnilが返される
        if id.count == 9{
            self.id =  id
        } else {
            return nil
        }
    }
}

print("------")

class Animal{}

class Fish: Animal{}

class Dog: Animal {
    func makeNoise(){
        print("!・＿・!")
    }
}
    
let pets = [Fish(), Dog(), Fish(), Dog()]
//型推論によりpetsをAnimalの配列にする

//各petsがDogオブジェクトであるかどうかを確認し、そうである場合はmakeNoise（）を呼び出す
for pet in pets {
    if let dog = pet as? Dog { // as? → タイプキャストが失敗したらnilを返す
        dog.makeNoise() //DogクラスをキャストしたためmakeNoiseメソッドが使える
    }
}

print(pets)
