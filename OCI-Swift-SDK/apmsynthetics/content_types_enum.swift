import Foundation

// MARK: - ContentTypesEnum

public enum ContentTypesEnum: String, Codable, Sendable {
    case side = "SIDE"
    case js = "JS"
    case playwrightTs = "PLAYWRIGHT_TS"
}

public extension ContentTypesEnum {
    static var allValues: [ContentTypesEnum] { [.side, .js, .playwrightTs] }
    static var allStringValues: [String] { ["SIDE", "JS", "PLAYWRIGHT_TS"] }
    static func fromString(_ value: String) -> ContentTypesEnum? { ContentTypesEnum(rawValue: value) }
}