import Foundation

// MARK: - ImageDetailsImageStatusEnum

public enum ImageDetailsImageStatusEnum: String, Codable, Sendable {
    case green = "GREEN"
    case yellow = "YELLOW"
    case red = "RED"
}

public extension ImageDetailsImageStatusEnum {
    static var allValues: [ImageDetailsImageStatusEnum] { [.green, .yellow, .red] }
    static var allStringValues: [String] { ["GREEN", "YELLOW", "RED"] }
    static func fromString(_ value: String) -> ImageDetailsImageStatusEnum? { ImageDetailsImageStatusEnum(rawValue: value) }
}