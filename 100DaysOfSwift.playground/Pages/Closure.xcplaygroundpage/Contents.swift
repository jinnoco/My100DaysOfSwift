import UIKit

let driving = {
    print("drive my car")
}
driving()

print("----------------")


//戻り値を設定したらreturnを記述
let driving_2 = {(place: String) -> String in
    return ("I'go to \(place) in my car")
}

let message = driving_2("Mt.Fuji")
print("message:", message)

print("----------------")


func travel(action: () -> Void){
    print("ready to go")
    action()
    print("arrived")
}
//travel(action: driving)

//trailing closure syntax
travel() {
    print("driving in my car")
}
//↑()は省略可能

print("----------------")

func travel_2(action: (String) -> Void ){
    print("ready to go")
    action("DisneyLand")
    print("arrived")
}

travel_2 {(place: String) in
    print("go to \(place) in my car")
}
/*
(実行結果)
ready to go
go to Disneyland in my car
arrived
 */

print("----------------")

func travel_3(action: (String) -> String){
    print("ready to go")
    let description = action("DisneySea")
    print(description)
    print("arrived")
}

/*
travel_3 {(place:String) -> String in
    return "go to \(place) in my car"
}
*/
//↓省略形
travel_3 { place in
    "go to \(place) in my car"
}

print("----------------")


//複数のパラメータver
func travel_4(action: (String, Int) -> String) {
    print("ready to go")
    let description  =  action("USJ", 60)
    print(description)
    print("arrived")
}

travel_4 {
    "I'm goiing to \($0) at \($1) miiles per hour"
}
//$0 → 一個目、$1 → 二個目

print("----------------")

func travel_5() ->  (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}

let result = travel_5()
result("Tokyo")

let result_2 = travel_5()("Hokkaido")


let vw = UIView()
UIView.animate(withDuration: 0.5) {
    vw.alpha = 0
}

class Singer{
    func playSong(){
        print("Let It Be")
    }
}

func sing() -> () -> Void {
    let Beatles = Singer()
    let singing = { [weak Beatles] in
        Beatles?.playSong()
        return
    }
    return singing
}

let singFunc = sing()
singFunc()

//Strong reference cycles
class House {
    var ownerDetails: (() -> Void)?

    func printDetails() {
        print("This is a great house.")
    }

    deinit {
        print("I'm being demolished!")
    }
}
