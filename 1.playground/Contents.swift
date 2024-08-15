//: Playground - noun: a place where people can play

import UIKit
import Foundation

//var str = "Hello, playground"

//let array = ["first", "second", "third", "third"]

//print(array.count)
//let set = Set(array)
//print(set.count)

//for i in 1...100 {
//    switch (i%3, i%5) {
//    case (0, 0):
//        print("\(i) FizzBuzz")
//    case (0, _):
//        print("\(i) Fizz")
//    case (_, 0):
//        print("\(i) Buzz")
//    default:
//        print(i)
//    }
//}

//enum squareErrors: Error {
//    case outOfBounds, crash, noSquare
//}
//
//func intSquare(number: Int) throws -> Int {
//    if number > 10_000 || number < 1 {
//        throw squareErrors.outOfBounds
//    }
//    for i in 1...100 {
//        if i*i == number {
//            return i
//        }
//    }
//    throw squareErrors.noSquare
//}
//do {
//    try intSquare(number: 2222222)
//} catch squareErrors.noSquare {
//    print("No Square")
//} catch squareErrors.outOfBounds {
//    print("Out of Bounds")
//}

//let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]
//
//let firstStep = luckyNumbers.filter { $0%2 != 0 }
//print(firstStep)
//var secondStep = firstStep.sorted { $0 < $1 }
//print(secondStep)
//var thirdStep = secondStep.map { "\($0) is lucky number" }
//for i in thirdStep {
//    print(i)
//}

// Mark Checkpoint 6
//struct Car {
//    let model: String
//    let numberOfSeats: Int
//    private(set) var gear: Int {
//        didSet {
//            print("\(model) moving with \(gear)")
//        }
//    }
//
//    mutating func changeGear(gear change: String) {
//        if self.gear == 0 && change == "-" {
//            print("Cant down gear below 0")
//            return
//        }
//        if change == "+" {
//            self.gear += 1
//        } else {
//            if change == "-" {
//                self.gear -= 1
//            } else { print("Wrong command, gear only can up with '+' command and down with '-' command") }
//        }
//    }
//}

//var mazda = Car(model: "Mazda", numberOfSeats: 4, gear: 0)
//mazda.changeGear(gear: "+")
//mazda.changeGear(gear: "-")
//mazda.changeGear(gear: "-")
//mazda.changeGear(gear: "34")
//mazda.changeGear(gear: "+")
//mazda.model
//mazda.numberOfSeats
////mazda.gear = 12

// Mark Checkpoint 7

//class Animal {
//    let legs: Int
//    init(legs: Int) {
//        self.legs = legs
//        speak()
//    }
//    func speak() {
//        print("Animal sounds")
//    }
//}
//class Dog : Animal {
//    override func speak() {
//        print("Bark Bark")
//    }
//}
//class Cat: Animal {
//    var isTame = false
//    override func speak() {
//        print("Meow Meow")
//    }
//    init(isTame: Bool, legs: Int) {
//        self.isTame = isTame
//        super.init(legs: legs)
//    }
//}
//
//class Corgi: Dog {
//    override func speak() {
//        print("Woof Woof")
//    }
//}
//class Poodle: Dog {
//    override func speak() {
//        print("Gaw Gaw")
//    }
//}
//class Persian: Cat {
//}
//class Lion: Cat {
//    override func speak() {
//        print("Roar Rawrr")
//    }
//}
//let dog = Dog(legs: 4)
//let cat = Cat(isTame: true, legs: 4)
//let lion = Lion(isTame: false, legs: 4)
//let persian = Persian(isTame: true, legs: 4)
//let corgi = Corgi(legs: 4)
//let poodle = Poodle(legs: 4)

// Mark 8 Protocols

//protocol Building {
//     var roomsNumber: Int { get }
//     var cost: Int { get }
//     var agentName: String { get set }
//    func forSale()
//}
//extension Building {
//    func forSale() {
//        print("\( Self.self ) for sale, \(roomsNumber) rooms, cost is \(cost)$, realtor \(agentName)")
//    }
//}
//struct House: Building {
//     var roomsNumber: Int
//     var cost: Int
//     var agentName: String
//}
//struct Office: Building {
//     var roomsNumber: Int
//     var cost: Int
//     var agentName: String
//}
//var house = House(roomsNumber: 3, cost: 250_000, agentName: "Jonhson")
//house.forSale()
//var office = Office(roomsNumber: 23, cost: 700_000, agentName: "Klark")
//office.forSale()
//house.agentName = "Clark"
//house.forSale()

// Mark 9 Optionals

func randomArray(array: [Int]?) -> Int {
    guard let arrCount = array?.count else { return 0 }
    let count = UInt32(arrCount)
    let random = Int(arc4random_uniform(count))
    let defaultRandom = Int(arc4random_uniform(UInt32(100)))
    if count == 0 { return defaultRandom }
    print("arr count\(count), random index \(random), defaultRandom \(defaultRandom)")
    let number = array?[random] ?? defaultRandom
    return number
}

randomArray(array: nil)
randomArray(array: [12,234,23,43])
randomArray(array: [])











