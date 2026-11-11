import Foundation

// MARK: - ListGenericArtifactsSortByEnum

public enum ListGenericArtifactsSortByEnum: String, Codable, Sendable {
    case timecreated = "TIMECREATED"
    case displayname = "DISPLAYNAME"
}

public extension ListGenericArtifactsSortByEnum {
    static var allValues: [ListGenericArtifactsSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["TIMECREATED", "DISPLAYNAME"] }
    static func fromString(_ value: String) -> ListGenericArtifactsSortByEnum? { ListGenericArtifactsSortByEnum(rawValue: value) }
}