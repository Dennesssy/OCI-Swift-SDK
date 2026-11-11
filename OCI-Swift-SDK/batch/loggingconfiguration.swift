import Foundation

// MARK: - loggingconfiguration

public struct loggingconfiguration: Codable, Sendable {

    public var jsonData: Data?
    public var type: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, type
    }

    public init(
                jsonData: Data? = nil,
                type: String? = nil
    ) {
        self.jsonData = jsonData
        self.type = type
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension loggingconfiguration: CustomStringConvertible {
    public var description: String { "loggingconfiguration()" }
}