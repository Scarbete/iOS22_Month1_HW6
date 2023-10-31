import Foundation


protocol BookCellDelegate: AnyObject {
    func toggleStatus(bookCell: BookCell)
}
