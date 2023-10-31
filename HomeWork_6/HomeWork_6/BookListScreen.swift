import Foundation


class BookListScreen: BookCellDelegate {
    var bookCells: [BookCell] = []
    
    init(books: [Book]) {
        renderBooks(array: books)
    }
    
    func renderBooks (array: [Book]) {
        for book in array {
            let bookCell = BookCell(book: book)
            bookCell.delegate = self
            bookCells.append(bookCell)
        }
    }
    
    func toggleStatus (bookCell: BookCell) {
        let book = bookCell.book
        book.isFavorite
            ? print("Книга ( \(book.title) ) добавлена в избранное ❤️")
            : print("Книга ( \(book.title) ) удалена из избранного 💔")
    }
    
    func showAllBooks () {
        print("Все книги 📖")
        
        for index in 0..<bookCells.count {
            let kniga = bookCells[index].book
            print("\nКнига: \(index + 1) \nНазвание - \(kniga.title), \nЦена: \(kniga.price) 💰, \nВ избранных: \(kniga.isFavorite ? "да ✅" : "нет ❌")")
        }
    }
    
    func toggleIsFav () {
        showAllBooks()
        
        print("\nВыберите номер книги для изменения его состояния в избранных...🔽")
        let indexOfBook = Int(readLine()!)
        
        if indexOfBook != nil {
            if indexOfBook! > 0 && indexOfBook! <= bookCells.count {
                return bookCells[indexOfBook! - 1].toggleFavoriteStatus()
            }
            else { print("Такой книги нет ❌") }
        }
        else { print("Вы ничего не ввели ❌") }
    }
}
