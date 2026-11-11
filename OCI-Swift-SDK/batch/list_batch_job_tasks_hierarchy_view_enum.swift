import Foundation

// MARK: - ListBatchJobTasksHierarchyViewEnum

public enum ListBatchJobTasksHierarchyViewEnum: String, Codable, Sendable {
    case shallow = "SHALLOW"
    case deep = "DEEP"
}

public extension ListBatchJobTasksHierarchyViewEnum {
    static var allValues: [ListBatchJobTasksHierarchyViewEnum] { [.shallow, .deep] }
    static var allStringValues: [String] { ["SHALLOW", "DEEP"] }
    static func fromString(_ value: String) -> ListBatchJobTasksHierarchyViewEnum? { ListBatchJobTasksHierarchyViewEnum(rawValue: value) }
}