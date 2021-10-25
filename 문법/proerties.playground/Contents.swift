import UIKit
import CoreGraphics

struct Dog{
    var name: String
    let gander: String
}


var dog = Dog(name: "dong", gander: "Male")
print(dog)

dog.name = "donghyun"


let dog2 = Dog(name: "gunter", gander: "mail")
//dog2.name ="donghyun"

class Cat{
    var name: String
    let gander: String
    
    init(name: String, gander:String){
        self.name = name
        self.gander = gander
    }
}


let cat = Cat(name: "json", gander: " mail")
cat.name = "dkd"
print(cat.name)


struct Stock{
    var avergePrice: Int
    var quantiny: Int
    var purchsePrice: Int{
        get{
            return avergePrice * quantiny
        }
        set{
            avergePrice = newValue / quantiny
        }
    }
}

var stock = Stock(avergePrice:  2300, quantiny: 3)
print(stock)
stock.purchsePrice
stock.purchsePrice = 3000
stock.avergePrice


//class Account{
//    var credit: Int = 0
//    willSet {
//        print("잔액이 \(credit)원에서 \(newValue)원으로 변경될 예정임")
//    }
//
//    didSet {
//        print("잔액이 \(oldValue)원에서 \(credit)원으로 변경될 예정임")
//    }
//}
//
//var account = Account()
//account.credit = 1000



struct SomeStructure{
    static var storedTypeProperty = "some Value"
    
    static var computedTypeProperty: Int{
        return 1
    }
}

SomeStructure.storedTypeProperty
SomeStructure.computedTypeProperty
SomeStructure.storedTypeProperty = "hello"
SomeStructure.storedTypeProperty
