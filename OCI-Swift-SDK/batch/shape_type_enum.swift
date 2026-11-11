import Foundation

// MARK: - ShapeTypeEnum

public enum ShapeTypeEnum: String, Codable, Sendable {
    case cpu = "CPU"
    case gpu = "GPU"
}

public extension ShapeTypeEnum {
    static var allValues: [ShapeTypeEnum] { [.cpu, .gpu] }
    static var allStringValues: [String] { ["CPU", "GPU"] }
    static func fromString(_ value: String) -> ShapeTypeEnum? { ShapeTypeEnum(rawValue: value) }
}