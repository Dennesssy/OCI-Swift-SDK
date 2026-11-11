import Foundation

// MARK: - ListContainerImageSignaturesSortOrderEnum

public enum ListContainerImageSignaturesSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListContainerImageSignaturesSortOrderEnum {
    static var allValues: [ListContainerImageSignaturesSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListContainerImageSignaturesSortOrderEnum? { ListContainerImageSignaturesSortOrderEnum(rawValue: value) }
}