//Задача 1

//Имеет публичный доступ, так как любой может создать аккаунт, поссчитать сумму вклада и т.п.
public class BankAcc {
    var deposit: Double      // сумма вклада
    var rate: Double = 0.03  // процентная ставка

    var profit: Double {
        //Пример геттера: можно вычислять прибыль со вклада (например, имея сумму вклада и процентную ставку)
        get {
            return deposit + deposit * rate
        }
        //Пример сеттера: можно ввести ожидаемую прибыль и узнать сумму вклада, необходимую для получения этой прибыли
        set {
            self.deposit = newValue / (1 + rate)
        }
    }
    init(deposit: Double, rate: Double){
        self.deposit = deposit
        self.rate = rate
    }
    //Пример публичного метода: узнать текущий курс
    public func showExchangeRate() {
print("Текущий курс доллара: 65 \nТекущий курс евро: 69")
    }
    //Пример приватного метода: узнать свой баланс
    private func showMyBalance() {
        print("Ваш текущий баланс составляет: ")
    }
}

var myAcc: BankAcc = BankAcc(deposit: 1000, rate: 0.03)

print(myAcc.profit)

myAcc.profit = 5000
print(myAcc.deposit)

myAcc.showExchangeRate()

//Задание 2

class Person {

    func displayData(_ source: String) {

    }

    func displayData(_ source: Int) {

    }

    func displayData(_ source: Bool) {

    }

}
