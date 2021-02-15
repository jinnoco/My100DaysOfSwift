import UIKit

let firstCard = 11
let secondCard = 10

if firstCard == secondCard {
    print("same")
} else {
    print("different")
}
print(firstCard == secondCard ? "same" : "different")
// 条件 ? true : false

let num1 = 10
let num2 = 20

print(num1 == num2 ? "same" : "different")
print(num1 != num2 ? "different" : "same")


let result: String

if num1 == num2 {
    result = "same"
} else {
    result = "different"
}
print(result)


let result2 = num1 == num2 ? "same" : "different"
print(result2)
