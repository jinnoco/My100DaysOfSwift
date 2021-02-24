import UIKit

class Dog{
    var name: String
    var breed: String

    init(name:String, breed: String){
        self.name = name
        self.breed = breed
    }
}

let poppy = Dog(name: "poppy", breed: "poodle")

class Poodle: Dog  {
//Dogクラスを継承
    init(name: String){ //breedは常にPoodleであるためnameだけ初期化
        super.init(name: name, breed: "Poodle")
    }
}

let mine = Poodle(name: "myPoodle")
print(mine.name) //myPoodle
print(mine.breed) //poodle

class Dog2{
    func noise(){
        print("bark")
    }
}

class Shiba: Dog2{
    override func noise() {
    //ovarrideすることで継承しても実装を変更できる
        print("oooooooooo")
    }
}

let shiba_inu = Shiba()
shiba_inu.noise()

// クラスをfinalとして宣言すると、他のクラスはそのクラスから継承できなくなる
/*
final class Dog{
var name: String
var breed: String

init(name:String, breed: String){
    self.name = name
    self.breed = breed
}
}
*/

class Singer {
    var name = "Ed Sheeran"
}

var singer = Singer()
print(singer.name)

var singerCopy = singer
singerCopy.name = "Beatles"

print(singer.name)

// 構造体をコピーして一方を変更しても反映されないが、クラスは一方を変更するともう一方も変更される

print("---------------")

class Person {
    var name = "Elick"
    init(){
        print("\(name) with init")
    }
    
    func greet(){
        print("Hello, \(name)!")
    }
    
    //personインスタンスが破棄されるたびに呼び出される
    deinit{
        print("\(name) with deinit")
    }
}

for _ in 1...3 {
    let person = Person()
    person.greet()
}

/* 実行結果		
 Elick with init
 Hello, Elick!
 Elick with deinit
 Elick with init
 Hello, Elick!
 Elick with deinit
 Elick with init
 Hello, Elick!
 Elick with deinit
 */


/*
 クラスと構造体の違い
 ・クラスは自動で初期化されない
 ・クラスを別のクラスに基づいて作ることができる（継承）
 ・クラスのインスタンスはオブジェクトと呼ばれ、オブジェクトをコピーして値を変更すると元のオブジェクトも変更される
 （一方を変更すると両方される）
 */

class Man {
    var name: String
    var age: Int
    
    init(name: String, age: Int){
        self.name = name
        self.age = age
    }
    
    func speak(){
        print("Hi.")
    }
}
  
var Taro = Man(name: "Taro", age: 20)
    
Taro.name //"Taro"
Taro.age //20
Taro.speak() //Hi.

//Manクラスが実行する全ての機能を備えた新しいクラス
class Student: Man {
    //overrideで親クラスのメソッドを書き換えることができる
    override func speak() {
        print("I'm a student.")
    }
}

var Toshi = Student(name: "Toshi", age: 19)
Toshi.speak() //I'm a student.

class Woker: Man {
    var work: String
    init(name: String, age: Int, work: String) {
    self.work = work
    super.init(name: name, age: age)
    }
    override func speak() {
        print("I'm working.")
    }
}

/*
 値が渡されて適切に変更される1つの共有状態が必要な場合はクラス
 1つのコピーが他のすべてに影響を与えることができない共有状態を回避したい場合は、構造体    
 */



class Album {
    var name: String
    init(name: String) {
        self.name = name
    }
    func getperformance() -> String {
        return "The album \(name) sold lots."
    }
}

class StudioAlbum: Album {
    var studio: String
    init(name: String, studio: String){
        self.studio = studio
        super.init(name: name)
    }
    override func getperformance() -> String {
        return "The album \(name) sold lots."
}
}

class LiveAlbum: Album {
    var location: String
    init(name: String, location: String) {
        self.location = location
        super.init(name: name)
    }
    
    override func getperformance() -> String {
        return "The album \(name) sold lots."
}
}

var plus = StudioAlbum(name: "plus", studio: "Astudio")
var multiply = StudioAlbum(name: "multiply", studio: "Bstudio")
//var devide = LiveAlbum(name: "devide", location: "Clocation")

var allAlbums: [Album] = [plus, multiply]

for album in allAlbums {
    print(album.getperformance())
    if let studioAlbum = album as? StudioAlbum {
        print(studioAlbum.studio)
    }
        
//    } else if let liveAlbum = album as? LiveAlbum {
//        print(liveAlbum.location)
//    }
}


//The album plus sold lots.
//The album multiply sold lots.
//The album devide sold lots.


for album in allAlbums as! [StudioAlbum] {
    print(album.studio)
}

//for album in allAlbums as! [LiveAlbum] ?? [LiveAlbum]() {
//    print(album.location)
//}

let number = 2
let text = String(number)

print(text)
