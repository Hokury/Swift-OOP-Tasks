// Задание 1
enum Country {
    case uk, usa, spain, poland
}

struct Track: Equatable {
    var artist: String
    var title: String
    var durationSeconds: Int
    var country: Country
}

class Category {

    var categoryName: String
    var trackList: [Track] = []
    var tracksCount: Int {
        return trackList.count
    }

    init(categoryName: String) {
        self.categoryName = categoryName
    }

    func addTrack(trackToAdd: Track) -> Void {
        trackList.append(trackToAdd)
    }

    func removeTrack(trackToRemove: Track) {
        if trackList.isEmpty {
            print("Плейлист пуст")
        } else {
            trackList.removeAll(where: { $0 == trackToRemove })
        }
    }

    func showCategoryInfo() {
        print("Количество треков в плейлисте: \(tracksCount)")
    }

}


var anyCategory: Category = Category(categoryName: "My playlist")
anyCategory.addTrack(trackToAdd: Track(artist: "Muse", title: "Algorithm", durationSeconds: 180, country: .usa))
anyCategory.addTrack(trackToAdd: Track(artist: "U2", title: "Untitled song", durationSeconds: 120, country: .uk))
anyCategory.removeTrack(trackToRemove: Track(artist: "Muse", title: "Algorithm", durationSeconds: 180, country: .usa))

anyCategory.showCategoryInfo()

// Задание 2
class Library {
    var libraryName: String
    var categoryList: [Category] = []
    var categoriesCount:  Int {
        return categoryList.count
    }

    init(libraryName: String) {
        self.libraryName = libraryName
    }


    func addCategory(categoryToAdd: Category) -> Void {
        categoryList.append(categoryToAdd)
    }


    func removeCategory(categoryToRemove: Category) {
        if categoryList.isEmpty {
            print("Категория пуста")
        } else {
            categoryList.removeAll(where: { $0.categoryName == categoryToRemove.categoryName })
        }
    }

    func showLibraryInfo() {
        print("Количество плейлистов добавленных в \(libraryName): \(categoriesCount)")
    }

}

var anyLibrary: Library = Library(libraryName: "My music")
anyLibrary.addCategory(categoryToAdd: Category(categoryName: "My playlist"))
anyLibrary.addCategory(categoryToAdd: Category(categoryName: "One more playlist"))
anyLibrary.addCategory(categoryToAdd: Category(categoryName: "Not my playlist"))
anyLibrary.removeCategory(categoryToRemove: Category(categoryName: "Not my playlist"))

anyLibrary.showLibraryInfo()
