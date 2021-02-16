import UIKit

let weather = "sunny"

    switch weather {
    case "rain" :
        print("bring un umbrella")
    case "snow" :
        print("wrap up warm")
    case "sunny" :
        print("wear sunscreen")
    default :
        print("enjoy your day")
    }

print("--------------")

let score = 85

switch score {
    case  0..<50:
        print("failede")
    case 50..<85:
        print("OK")
    default:
        print("great")
}
