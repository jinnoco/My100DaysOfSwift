import UIKit

protocol Identifiable {
    var id: String { get set }
}

//プロトコルの適合
struct User: Identifiable {
    var id: String
}

func displayId(thing: Identifiable){
    print("My Id is \(thing.id)")
}

protocol Payable {
    func calcableWages() -> Int
}

protocol NeedsTraining {
    func study()
}

protocol HasVacation {
    func takeVacation(days: Int)
}

protocol Employee: Payable, NeedsTraining, HasVacation{
    
}

//一辺の長さがIntの正方形の面積の値を返す拡張機能
extension Int {
    func squared() -> Int {
        return self * self
    }
}

let number = 17
print(number.squared())

print("------")

//Intが偶数だったらtrueを返す拡張機能
extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
}

let number2 = 34
print(number2.isEven)

print("-------")

let arr = ["1", "2", "3", "4","4","5"]
let set = Set(["a", "b", "c", "d"])

extension Collection {
    func summarise(){
        print("There are \(count) in collection")
        
        for name in self {
            print(name)
        }
    }
    
}

print(arr.summarise())
print(set.summarise())

print("-----")

protocol Identifiable2 {
    var id: String {get set}
    func identify()
}

extension Identifiable2 {
    func identify(){
        print("My id is \(id)")
    }
}

struct User2: Identifiable2 {
    var id: String
}

let nofprog = User2(id: "nofprog")
print(nofprog.identify())

print("-------------")

protocol Employee2 {
    var name: String { get set }
    var jobTitle: String { get set }
    func doWork()
}

struct Executive: Employee2 {
    var name: String = "jobs"
    var jobTitle: String = "CEO"
    func doWork() {
        print("Working as CEO")
    }
}

struct Designer: Employee2 {
    var name: String = "Ive"
    var jobTitle: String = "designer"
    func doWork() {
        print("design for product")
    }
}

let staff: [Employee2] = [Executive(), Designer()]

for person in staff {
    person.doWork()
}
