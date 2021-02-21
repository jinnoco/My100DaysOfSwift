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

try! checkPassword("Pass")
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


func getHaterStatus(weather: String) -> String? {
    if weather == "sunny" {
        return nil
    } else {
        return "Hate"
    }
}

var status = getHaterStatus(weather: "rain")


func ageWithName(name: String) -> Int{ //Int型を返さなければならない
    if name == "Taro" { return 20 }
    if name == "Toshi" { return 19 }
    if name == "Koki" { return 22 }
    
    return 0
}

func ageWithName2(name: String) -> Int? { //nilを返すことができる
    if name == "Taro" { return 20 }
    if name == "Toshi" { return 19 }
    if name == "Koki" { return 22 }
    
    return nil
}

var age3 = ageWithName2(name: "Taro")
if age3 == nil {
    print("That's an error")
} else {
    print("He is \(age3) years old.")
}
//He is Optional(20) years old.

func ageWithName3(age: Int) -> String? {
    switch age {
    case 20:
        return "Taro"
    case 19:
        return "Toshi"
    case 22:
        return "Koki"
    default:
        return nil
    }
}

let person = ageWithName3(age: 19)
print("He is \(person)")
//He is Optional("Toshi")

//文字列が戻ってきたら大文字にし、それ以外は何もしない
//nilが見つかると途中で停止する
let person2 = ageWithName3(age: 22)?.uppercased()
print("He is \(person2)")
//He is Optional("KOKI")

//nilを返したら代わりにunknownを入れる
let person3 = ageWithName3(age: 11) ?? "unknown"
print("He is \(person3)")
//He is unknown

