import UIKit

func letterCount(myString str: String){
    print("The \(str) has \(str.count) letters")
}

//myString → 外部用
//str → 内部用

letterCount(myString: "Hello")

//外部パラメータ省略
//(_ str: String)


func appleProduct(name: String) -> Bool {
    if name == "iPhone" { return true }
    if name == "iPad" { return true }
    if name == "iMac" { return true }
    if name == "Apple Watch" { return true }
    
    return false
}

if appleProduct(name: "iPhone") {
    print("It's an  Apple's.")
} else {
    print("Oher products")
}
