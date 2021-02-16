import UIKit

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

//var basketball = Sport(name: "Basektball")
//print(basketball.name)
//
//basketball.name = "NBA"
//print(basketball.name)


struct Progress {
    var task: String
    var amount: Int {
        didSet {
            print("\(task) is \(amount)% comolete")
        }
    }
}
    
var progress = Progress(task: "Loading", amount: 0)
progress.amount = 50
progress.amount = 100

