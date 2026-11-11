import Foundation

// MARK: - ListPathsSortByEnum

public enum ListPathsSortByEnum: String, Codable, Sendable {
    case type = "type"
    case sizeinbytes = "sizeInBytes"
    case name = "name"
}

public extension ListPathsSortByEnum {
    static var allValues: [ListPathsSortByEnum] { [.type, .sizeinbytes, .name] }
    static var allStringValues: [String] { ["type", "sizeInBytes", "name"] }
    static func fromString(_ value: String) -> ListPathsSortByEnum? { ListPathsSortByEnum(rawValue: value) }
}