import Foundation

// MARK: - ListTenancyAttachmentsSortByEnum

public enum ListTenancyAttachmentsSortByEnum: String, Codable, Sendable {
    case timeCreated = "TIME_CREATED"
    case description = "DESCRIPTION"
}

public extension ListTenancyAttachmentsSortByEnum {
    static var allValues: [ListTenancyAttachmentsSortByEnum] { [.timeCreated, .description] }
    static var allStringValues: [String] { ["TIME_CREATED", "DESCRIPTION"] }
    static func fromString(_ value: String) -> ListTenancyAttachmentsSortByEnum? { ListTenancyAttachmentsSortByEnum(rawValue: value) }
}