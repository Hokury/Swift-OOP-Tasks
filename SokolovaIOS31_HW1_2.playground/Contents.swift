// Задача 1

// enum.1

enum Planets: Int{

    case Mercury = 1, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Neptune

    func currentPlanet() -> String{

        return Planets.getPlanet(number: rawValue)
    }

    static func getPlanet(number: Int) -> String{

        switch number{

            case 1:
                return "Меркурий"
            case 2:
                return "Венера"
            case 3:
                return "Земля"
            case 4:
                return "Марс"
            case 5:
                return "Юпитер"
            case 6:
                return "Сатурн"
            case 7:
                return "Уран"
            case 8:
                return "Нептун"
            default:
                return "undefined"
        }
    }
}

var somePlanet: Planets = Planets.Earth
somePlanet.currentPlanet() // Земля
var secondPlanet = Planets.getPlanet(number: 6) // Сатурн

// enum.2

enum DayOfWeek: Int{

    case Monday = 1, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday

    var label : String {
        switch self {
            case .Monday: return "Понедельник"
            case .Tuesday: return "Вторник"
            case .Wednesday: return "Среда"
            case .Thursday: return "Четверг"
            case .Friday: return "Пятница"
            case .Saturday: return "Суббота"
            case .Sunday: return "Воскресенье"
        }
    }
}
let day1 = DayOfWeek.Monday
print(day1.label)               // Понедельник
print(DayOfWeek.Friday.label)   // Пятница



// struct

struct User {
    var name: String = "Angela"
    var age: Int = 28

    func getInfo() -> String{

        return "Имя: \(name). Возраст: \(age)"
    }
}
var angela: User = User()
print(angela.getInfo())

var olga  = User()
olga.name = "Olga"
olga.age = 23
print(olga.getInfo())


// class

class Exchange{
    class var usd : Double { return 63.0 }
    class func convert(sum: Double) -> Double {
        return sum / usd
    }
}

class BankExchange : Exchange{

    override static var usd : Double{ return 63.0 }
    override static func convert(sum: Double) -> Double {
        return sum / usd - sum / usd * 0.1
    }
}

print(Exchange.convert(sum: 20000))
print(BankExchange.convert(sum: 20000))


