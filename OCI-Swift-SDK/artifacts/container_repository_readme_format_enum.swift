import Foundation

// MARK: - ContainerRepositoryReadmeFormatEnum

public enum ContainerRepositoryReadmeFormatEnum: String, Codable, Sendable {
    case markdown = "TEXT_MARKDOWN"
    case plain = "TEXT_PLAIN"
}

public extension ContainerRepositoryReadmeFormatEnum {
    static var allValues: [ContainerRepositoryReadmeFormatEnum] { [.markdown, .plain] }
    static var allStringValues: [String] { ["TEXT_MARKDOWN", "TEXT_PLAIN"] }
    static func fromString(_ value: String) -> ContainerRepositoryReadmeFormatEnum? { ContainerRepositoryReadmeFormatEnum(rawValue: value) }
}