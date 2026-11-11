import Foundation

// MARK: - staticpublickey

public struct staticpublickey: Codable, Sendable {

    public var jsonData: Data?
    public var kid: String?
    public var format: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, kid, format
    }

    public init(
                jsonData: Data? = nil,
                kid: String? = nil,
                format: String? = nil
    ) {
        self.jsonData = jsonData
        self.kid = kid
        self.format = format
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension staticpublickey: CustomStringConvertible {
    public var description: String { "staticpublickey()" }
}