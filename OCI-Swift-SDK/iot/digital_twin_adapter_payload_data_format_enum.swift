import Foundation

// MARK: - DigitalTwinAdapterPayloadDataFormatEnum

public enum DigitalTwinAdapterPayloadDataFormatEnum: String, Codable, Sendable {
    case json = "JSON"
}

public extension DigitalTwinAdapterPayloadDataFormatEnum {
    static var allValues: [DigitalTwinAdapterPayloadDataFormatEnum] { [.json] }
    static var allStringValues: [String] { ["JSON"] }
    static func fromString(_ value: String) -> DigitalTwinAdapterPayloadDataFormatEnum? { DigitalTwinAdapterPayloadDataFormatEnum(rawValue: value) }
}