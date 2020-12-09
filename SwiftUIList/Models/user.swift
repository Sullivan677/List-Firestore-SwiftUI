import Foundation

struct User: Identifiable {
    var id: String = UUID().uuidString
    var name: String
    var surname: String
}
