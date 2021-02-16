import UIKit

enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    return true
}

// passwordに"password"を入力して実行するとPasswordErrorが発動する
// password以外だったらtrueを返す

try checkPassword("123456")
//try checkPassword("password")

do {
    try checkPassword("password")
    print("enable")
} catch {
    print("You can't use this password")
}
