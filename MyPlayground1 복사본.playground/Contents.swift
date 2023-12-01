class Calculator {
    var firstNumber: Double
    var secondNumber: Double
    
    init( firstNumber: Double, secondNumber: Double ) {
        self.firstNumber = firstNumber
        self.secondNumber = secondNumber
    }
    }

func add() -> Double {
    return firstNumber + secondNumber
}
func subtract() -> Double {
    return firstNumber - secondNumber
}
func multiply() -> Double {
    return firstNumber * secondNumber
}
func divide() -> Double {
    if secondNumber != 0 {
        return firstNumber / secondNumber
    }
    else {
        return 0.0 //왜 자꾸 inf가 뜨는가~
    }
}
//func remainder() -> Double? {
//    return firstNumber % secondNumber
//}

var firstNumber = Double(3)
var secondNumber = Double(0)

print("add: \(firstNumber + secondNumber)")
print("subtract: \(firstNumber - secondNumber)")
print("multiply: \(firstNumber * secondNumber)")
print("divide: \(firstNumber / secondNumber)")
//print("remainder: \(firstNumber % secondNumber)")

//class Calculator2: Calculator {
//    var thirdNumber: Double
//    var fourthNumber: Double
//    
//    init(firstNumber: Double, secondNumber: Double, thirdNumber: Double, fourthNumber: Double) {
//        self.thirdNumber = thirdNumber
//        self.fourthNumber = fourthNumber
//        super.init(firstNumber: firstNumber, secondNumber: secondNumber)
//    }
//}



