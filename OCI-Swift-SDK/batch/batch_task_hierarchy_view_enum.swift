import Foundation

// MARK: - BatchTaskHierarchyViewEnum

public enum BatchTaskHierarchyViewEnum: String, Codable, Sendable {
    case shallow = "SHALLOW"
    case deep = "DEEP"
}

public extension BatchTaskHierarchyViewEnum {
    static var allValues: [BatchTaskHierarchyViewEnum] { [.shallow, .deep] }
    static var allStringValues: [String] { ["SHALLOW", "DEEP"] }
    static func fromString(_ value: String) -> BatchTaskHierarchyViewEnum? { BatchTaskHierarchyViewEnum(rawValue: value) }
}