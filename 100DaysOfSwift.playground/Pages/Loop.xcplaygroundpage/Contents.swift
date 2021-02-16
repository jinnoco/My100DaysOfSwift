import UIKit

for i in 1...10 {
    print(i)
}

print("------------------")

let count = 1...10
for number in count {
    print(number)
}

print("------------------")

var number = 1
while number <= 20 {
    print(number)
    number += 1
}

print("------------------")

var num1 = 1

repeat {
    print(num1)
    num1 += 1
    if num1 == 12 {
        break
    }
} while num1 <= 20

print("------------------")

var num2 = 1

repeat {
    print("処理実行")
    num2 += 1
} while num2 <= 10

print("-----------------------")

for i in 1...10 {
    if i % 2 == 1 {
        continue
    }
    print(i)
}
