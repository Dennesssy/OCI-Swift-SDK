import Foundation
import OCICommon

// MARK: - StaticPublicKeySet

public struct StaticPublicKeySet: Codable, Sendable {

    public var keys: [JSONValue]?

    private enum CodingKeys: String, CodingKey {
        case keys
    }

    public init(
                keys: [JSONValue]? = nil
    ) {
        self.keys = keys
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension StaticPublicKeySet: CustomStringConvertible {
    public var description: String { "StaticPublicKeySet()" }
}