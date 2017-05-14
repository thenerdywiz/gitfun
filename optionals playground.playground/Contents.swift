//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


var lotteryWinngs: Int?
lotteryWinngs = 500


if lotteryWinngs != nil{

    
    
    print(lotteryWinngs!)
}
lotteryWinngs = 100

if let winnings = lotteryWinngs{

print(winnings)

}

class Car {

    var model:  String?
    
    
}


  var vehicle:  Car?
print(vehicle?.model)

    vehicle = Car()
    vehicle?.model = "Bronco"


if let v = vehicle, let m = v.model{
 
    
    
   print (m)
    
    }

var cars: [Car]?

cars = [Car]()

if let carArr = cars where carArr.count>0{

}

class Person {
    private var _age:  Int!
    
    var age: Int{
        if _age == nil {
        _age = 15
        
        }
    return _age
    }
    
    
    func setAge(newAge:  Int){
    self._age = newAge
    
    }


}
 var jack =  Person()
print(jack._age)
print(jack.age)



