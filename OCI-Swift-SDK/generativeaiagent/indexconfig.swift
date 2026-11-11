import Foundation

// MARK: - indexconfig

public struct indexconfig: Codable, Sendable {

    public var jsonData: Data?
    public var indexConfigType: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, indexConfigType
    }

    public init(
                jsonData: Data? = nil,
                indexConfigType: String? = nil
    ) {
        self.jsonData = jsonData
        self.indexConfigType = indexConfigType
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension indexconfig: CustomStringConvertible {
    public var description: String { "indexconfig()" }
}