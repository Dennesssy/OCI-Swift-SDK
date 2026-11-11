import Foundation

// MARK: - ShapeEnumEnum

public enum ShapeEnumEnum: String, Codable, Sendable {
    case sixSsds = "SIX_SSDS"
    case twelveSsds = "TWELVE_SSDS"
    case eighteenSsds = "EIGHTEEN_SSDS"
    case twentyFourSsds = "TWENTY_FOUR_SSDS"
}

public extension ShapeEnumEnum {
    static var allValues: [ShapeEnumEnum] { [.sixSsds, .twelveSsds, .eighteenSsds, .twentyFourSsds] }
    static var allStringValues: [String] { ["SIX_SSDS", "TWELVE_SSDS", "EIGHTEEN_SSDS", "TWENTY_FOUR_SSDS"] }
    static func fromString(_ value: String) -> ShapeEnumEnum? { ShapeEnumEnum(rawValue: value) }
}