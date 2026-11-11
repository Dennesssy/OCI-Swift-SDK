import Foundation

// MARK: - ListPullRequestAttachmentsSortByEnum

public enum ListPullRequestAttachmentsSortByEnum: String, Codable, Sendable {
    case filename = "fileName"
    case timecreated = "timeCreated"
    case createdby = "createdBy"
}

public extension ListPullRequestAttachmentsSortByEnum {
    static var allValues: [ListPullRequestAttachmentsSortByEnum] { [.filename, .timecreated, .createdby] }
    static var allStringValues: [String] { ["fileName", "timeCreated", "createdBy"] }
    static func fromString(_ value: String) -> ListPullRequestAttachmentsSortByEnum? { ListPullRequestAttachmentsSortByEnum(rawValue: value) }
}