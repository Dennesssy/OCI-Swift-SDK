import Foundation

// MARK: - JsonWebTokenClaim

public struct JsonWebTokenClaim: Codable, Sendable {

    public var key: String?
    public var values: [String]?
    public var isRequired: Bool?

    private enum CodingKeys: String, CodingKey {
        case key, values, isRequired
    }

    public init(
                key: String? = nil,
                values: [String]? = nil,
                isRequired: Bool? = nil
    ) {
        self.key = key
        self.values = values
        self.isRequired = isRequired
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension JsonWebTokenClaim: CustomStringConvertible {
    public var description: String { "JsonWebTokenClaim()" }
}