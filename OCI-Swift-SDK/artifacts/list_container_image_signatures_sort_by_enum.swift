import Foundation

// MARK: - ListContainerImageSignaturesSortByEnum

public enum ListContainerImageSignaturesSortByEnum: String, Codable, Sendable {
    case timecreated = "TIMECREATED"
    case displayname = "DISPLAYNAME"
}

public extension ListContainerImageSignaturesSortByEnum {
    static var allValues: [ListContainerImageSignaturesSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["TIMECREATED", "DISPLAYNAME"] }
    static func fromString(_ value: String) -> ListContainerImageSignaturesSortByEnum? { ListContainerImageSignaturesSortByEnum(rawValue: value) }
}