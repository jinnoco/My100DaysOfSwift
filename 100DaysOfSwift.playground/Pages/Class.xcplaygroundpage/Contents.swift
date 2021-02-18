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
