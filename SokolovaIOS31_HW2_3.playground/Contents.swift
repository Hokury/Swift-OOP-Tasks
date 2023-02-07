import Foundation

// Задание 1

let weight = 6065.0
let distance = 628_300_000.0

func fuel(closure: (Double, Double) -> Double) {
    let result = closure(weight, distance)
    print("You need \(result) tonns of fuel")
    }


var firstScientist = { (weight: Double, distance: Double) -> Double in
    let result = distance / weight * 0.08
    return result
}

let secondScientist = { (weight: Double, distance: Double) -> Double in
    let result = sqrt(distance * weight) / 235.54
    return result
}

fuel(closure: firstScientist)
fuel(closure: secondScientist)


//Задание 2

var newFirstScientist: (Double, Double) -> (Double) = {
    $1 / $0 * 0.08
}

var newSecondScientist: (Double, Double) -> (Double) = {
    sqrt($1 * $0) / 235.54
}


fuel(closure: newFirstScientist)
fuel(closure: newSecondScientist)

