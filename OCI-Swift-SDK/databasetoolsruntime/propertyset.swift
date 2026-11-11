import Foundation

// MARK: - propertyset

public struct propertyset: Codable, Sendable {

    public var jsonData: Data?
    public var isMutable: Bool?
    public var key: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, isMutable, key
    }

    public init(
                jsonData: Data? = nil,
                isMutable: Bool? = nil,
                key: String? = nil
    ) {
        self.jsonData = jsonData
        self.isMutable = isMutable
        self.key = key
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension propertyset: CustomStringConvertible {
    public var description: String { "propertyset()" }
}