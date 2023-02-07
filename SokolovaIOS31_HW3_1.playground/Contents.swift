enum Country {
    case uk, usa, spain, rus
}

enum Genre {
    case pop, rock, rap, jazz
}


class Artist {

    var artistName: String
    var artistCountry: Country
    var musicGenre: Genre

    init(artistName: String, artistCountry: Country, musicGenre: Genre) {
        self.artistName = artistName
        self.artistCountry = artistCountry
        self.musicGenre = musicGenre
    }

    func writeSong(trackName: String) {
        print("Я \(artistName) написал трек \(trackName)")
    }

    func performTrack(trackName: String) {
        print("Я \(artistName) исполнил трек \(trackName)")
    }

}


final class popArtist: Artist {

    var artistAge: Int

    init(artistName: String, artistCountry: Country, artistAge: Int) {
        self.artistAge = artistAge
        super.init(artistName: artistName, artistCountry: artistCountry, musicGenre: .pop)
    }


    override func writeSong(trackName: String) {
        print("\(artistAge)-летний исполнитель поп музыки \(artistName) написал трек \(trackName)")
    }

    override func performTrack(trackName: String) {
        print("\(artistAge)-летний исполнитель поп музыки \(artistName) спел трек \(trackName)")
    }

}


final class rockArtist: Artist {

    var artistAge: Int

    init(artistName: String, artistCountry: Country, artistAge: Int) {
        self.artistAge = artistAge
        super.init(artistName: artistName, artistCountry: artistCountry, musicGenre: .pop)
    }


    override func writeSong(trackName: String) {
        print("\(artistAge)-летний исполнитель рок музыки \(artistName) написал трек \(trackName)")
    }

    override func performTrack(trackName: String) {
        print("\(artistAge)-летний исполнитель рок музыки \(artistName) спел трек \(trackName)")
    }

}


final class rapArtist: Artist {

    var artistAge: Int

    init(artistName: String, artistCountry: Country, artistAge: Int) {
        self.artistAge = artistAge
        super.init(artistName: artistName, artistCountry: artistCountry, musicGenre: .pop)
    }


    override func writeSong(trackName: String) {
        print("\(artistAge)-летний исполнитель рэп музыки \(artistName) написал трек \(trackName)")
    }

    override func performTrack(trackName: String) {
        print("\(artistAge)-летний исполнитель рэп музыки \(artistName) спел трек \(trackName)")
    }

}


let ladyGaga: popArtist = popArtist(artistName: "Lady Gaga", artistCountry: .usa, artistAge: 36)
let kiss: rockArtist = rockArtist(artistName: "Kiss", artistCountry: .usa, artistAge: 73)
let eminem: rapArtist = rapArtist(artistName: "Eminem", artistCountry: .usa, artistAge: 50)

ladyGaga.writeSong(trackName: "Judas")
ladyGaga.performTrack(trackName: "Applause")

kiss.writeSong(trackName: "I Was Made")
kiss.performTrack(trackName: "Heaven's")

//var groupOfArtists: [Artist] = []
//groupOfArtists.append(ladyGaga)
//groupOfArtists.append(kiss)
//groupOfArtists.append(eminem)

