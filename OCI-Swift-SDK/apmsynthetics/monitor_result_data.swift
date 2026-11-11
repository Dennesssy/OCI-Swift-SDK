import Foundation

// MARK: - MonitorResultData

public struct MonitorResultData: Codable, Sendable {

    public var name: String?
    public var byteContent: Data?
    public var stringContent: String?
    public var timestamp: Date?

    private enum CodingKeys: String, CodingKey {
        case name, byteContent, stringContent, timestamp
    }

    public init(
                name: String? = nil,
                byteContent: Data? = nil,
                stringContent: String? = nil,
                timestamp: Date? = nil
    ) {
        self.name = name
        self.byteContent = byteContent
        self.stringContent = stringContent
        self.timestamp = timestamp
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension MonitorResultData: CustomStringConvertible {
    public var description: String { "MonitorResultData()" }
}