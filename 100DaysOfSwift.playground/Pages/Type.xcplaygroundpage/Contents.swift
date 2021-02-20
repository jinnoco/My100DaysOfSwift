import UIKit

var name = "nofprog"
print(type(of: name))
//String

var age = 20
print(type(of: age))
//Int

var latitude =  94.4567888888
print(type(of: latitude))

var longitude:  Float = -33.999243333
print(type(of: longitude))

//Float  32bit およそ10の38乗の正負の値まで表すことができる、最小で6桁の精度
//Double 64bit およそ10の308乗の正負の値まで表すことができる、最小で15桁の精度


var a = true
print(type(of: a))
//Bool

if a == true {
    print("a is true")
} else {
    print("It's fales")
}

var num1 = 1.1
var num2 = 2.2

num1 > num2 //false
num1 < num2 //true
num1 < 1.0 //false
num2 < 3   //true

var str = "abc"
str == "abc" //true
str != "abc" //false
str != "123" //true 
