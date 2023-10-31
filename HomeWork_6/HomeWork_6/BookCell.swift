import Foundation


class BookCell {
    var book: Book
    weak var delegate: BookCellDelegate?
    
    init(book: Book) {
        self.book = book
    }
    
    func toggleFavoriteStatus () {
        book.isFavorite = !book.isFavorite
        delegate?.toggleStatus(bookCell: self)
    }
}
