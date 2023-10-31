import Foundation


class Book {
    var title: String
    var price: Double
    var isFavorite: Bool
    
    init(title: String, price: Double, isFavorite: Bool) {
        self.title = title
        self.price = price
        self.isFavorite = isFavorite
    }
}
