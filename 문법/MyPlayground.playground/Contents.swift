import UIKit

class User{
    var nickname: String
    var age: Int
    
    init(nickname:String, age: Int)
    {
        self.nickname = nickname
        self.age = age
    }
    init(age:Int){
        self.nickname = "donghun"
        self.age = age
    }
}
var user = User(nickname: "donhyun", age: 17)
user.nickname
user.age


var user2 = User(age: 18)
user2.nickname
user2.age
