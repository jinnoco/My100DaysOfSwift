import UIKit

//列挙型にすると、Swiftはこれらの5つの値のみを受け入れる
//それ以外の場合はエラーが発生
enum WeatherType {
    case sun
    case cloud
    case rain
    case wind
    case snow
}

func getHaterStatus(weather: WeatherType) -> String?{
    if weather == .sun {
        return nil
    } else {
        return "Hate"
    }
}

getHaterStatus(weather: .sun) // nil
getHaterStatus(weather: .cloud) //"Hate"




func getHaterStatus2(weather: WeatherType) -> String? {
    switch weather {
    case .sun:
        return nil
    case .cloud, .wind:
        return "dislike"
    case .rain:
        return "Hate"
    case .snow:
        return nil
    }
}

getHaterStatus2(weather: .cloud) //"dislike"



/*
Enums with additional values

case wind(speed: Int)　→ 定義に値を追加できる

 Switch文中
case .wind(let speed) where speed < 10:  letを使用して列挙型内の値を取得し（参照できる定数名を宣言する）、where条件を使用してチェックする
return "meh"
 
 getHaterStatus(weather: .wind, speed: 7) "meh"
 */

