import UIKit

//var basketball = Sport(name: "Basektball")
//print(basketball.name)
//
//basketball.name = "NBA"
//print(basketball.name)

struct Sport {
    var name: String
    var isOlympicSport: Bool

    var olympicStatus: String {
        if isOlympicSport {
            return "\(name) is an Olympic sport"
        } else {
            return "\(name) is not an Olympic sport"
        }
    }
}

let chessBoxing = Sport(name: "Chessboxing", isOlympicSport: false)
print(chessBoxing.olympicStatus)
//returnの部分の文章を返す

print("---------------------")

struct Progress {
    var task: String
    var amount: Int {
        //amountが変更されるたびに出力
        didSet {
            print("\(task) is \(amount)% comolete")
        }
    }
}

var progress = Progress(task: "Loading", amount: 0)
progress.amount = 20
progress.amount = 100

print("---------------------")

struct City {
    var population: Int

    func collectTaxes() -> Int {
        return population * 1000
    }
}
let japan = City(population: 9_200_000)
print(japan.population)

print("---------------------")

struct Person {
    var name: String

    //メソッド内のプロパティを変更する場合はmutatingを使用してプロパティをマークする
    mutating func makeAnonymous(){
        name = "Anonymous"
    }
}

var person = Person(name: "Taro")
person.makeAnonymous()
print(person.name)
//実行結果: Anonymous

print("---------------------")

let string = "Hello, I'm a student at University in Japan."
print(string.count) //文字数をカウント
print(string.hasPrefix("Hello")) //"Hello"で始まっていたらtrueを返す ーprefix = 接頭語
print(string.uppercased()) //文字列を大文字にする: HELLO, I'M A STUDENT AT UNIVERSITY IN JAPAN.
print(string.sorted()) //Arrayに並べ替える: [" ", " ", " ", " ", " ", " ", " ", "\'", ",", ".", "H", "I", "J", "U", "a", "a", "a", "a", "d", "e", "e", "e", "i", "i", "i", "l", "l", "m", "n", "n", "n", "n", "o", "p", "r", "s", "s", "t", "t", "t", "t", "u", "v", "y"]

print("---------------------")

struct User {
    var username: String
    //初期化
    init(){
        username = "anonymous"
        print("Creating new user")
    }
}

var user = User()
user.username = "nofprog"
print(user.username)

print("--------------------")

struct Person2 {
    var name: String
    init(name: String){
        print("His name is \(name).")
        self.name = name
    }
}
//selfは、プロパティとパラメータを区別する
//self.nameはプロパティを参照し、nameはパラメータを参照


var John = Person2(name: "John")

print("--------------------")

struct FamilyTree {
    init(){
        print("create family tree")
    }
}
//FamilyTree構造体をPerson3構造体内のプロパティとして使用
struct Person3 {
    var name: String
    lazy var familyTree = FamilyTree() // lazy = 参照されるまで初期化されない
    init(name: String){
        self.name = name
    }
}

var ed = Person3(name: "ed")
ed.familyTree //ここでfamilyTreeが初期化される

print("--------------------")

struct Student {
    static var classSize = 0
    var name: String
    init(name: String){
        self.name = name
        Student.classSize += 1
    }
}

let paul = Student(name: "Paul")
let ringo = Student(name: "Ringo")

print(Student.classSize)
//staticで宣言した変数は呼び出したり変更することができる
//インスタンスを作らなくてもアクセスできる
//初期化は１度しか行われず、プログラム内で一貫して値を保持し続けるので、複数のインスタンス間でその値を共有できる

print("--------------------")

//Person内のメソッドのみがidプロパティを読み取ることができる

struct PersonWthId{
    private var id: String
    //構造体の外部から読み取れないようにすることができる
    //Person内のメソッドのみがidプロパティを読み取ることができる
    init(id: String){
        self.id = id
    }
    func identify() -> String{
        return "My Id is \(id)"
    }
}

let Bob = PersonWthId(id: "12321")
//print(Bob.id) ← 外部から参照しようとするとエラーになる


struct Man {
    var clothes: String
    var shoes: String
    
    //構造体内に関数(メソッド)を記入
    func describe(){
        print("I wear \(clothes) with \(shoes).")
    }
}

let Taro = Man(clothes: "shirts", shoes: "snarkers")

var TaroCopy = Taro
TaroCopy.clothes = "hoodie"
//コピー元の値は変更されない
print(Taro) //Man(clothes: "shirts", shoes: "snarkers")
print(TaroCopy) //Man(clothes: "hoodie", shoes: "snarkers")

Taro.describe() //I wear shirts with snarkers.


