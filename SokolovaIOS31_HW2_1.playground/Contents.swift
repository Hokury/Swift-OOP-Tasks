// Задане 1.1
class Tv {
    var brand: String
    var isOn: Bool
    enum TvChannels {
        case first, second, third, fourth, fifth
    }

    var currentChannel: TvChannels

    init(currentChannel: TvChannels, isOn: Bool, brand: String) {

        self.currentChannel = currentChannel
        self.isOn = isOn
        self.brand = brand

    }

    func whatsOnTv() {
        if isOn {
            print("You watch \(currentChannel) channel")
        } else {
            print("TV is off")
        }
    }

}
// 1.2
var someTv: Tv = Tv(currentChannel: Tv.TvChannels.first, isOn: true, brand: "LG")
someTv.whatsOnTv()
//1.3 - 1.4
someTv.currentChannel = .second
someTv.isOn = true
someTv.whatsOnTv()

someTv.isOn = false
someTv.whatsOnTv()

// Задание 2
struct Settings {
    enum Volume: String {
        case vol0 = "0"
        case vol01 = "0.1"
        case vol02 = "0.2"
        case vol03 = "0.3"
        case vol04 = "0.4"
        case vol05 = "0.5"
        case vol06 = "0.6"
        case vol07 = "0.7"
        case vol08 = "0.8"
        case vol09 = "0.9"
        case vol1 = "1"
    }
    var isMulticolor: Bool
    var currentVolume: Volume
    init(currentVolume: Volume, isMulticolor: Bool) {
        self.isMulticolor = isMulticolor
        self.currentVolume = currentVolume
    }
}


class NewTv: Tv {
    var settings: Settings

    init(currentChannel: TvChannels, isOn: Bool, brand: String, settings: Settings) {
        self.settings = settings
        super.init(currentChannel: currentChannel, isOn: isOn, brand: brand)
    }


    override func whatsOnTv() {
        if isOn {
            print("You watch \(currentChannel) channel")
        } else {
            print("TV is off")
        }
    }
}

var anyNewTv: NewTv = NewTv(currentChannel: .second, isOn: true, brand: "Samsung", settings: Settings(currentVolume: .vol06, isMulticolor: false))

anyNewTv.whatsOnTv()
