import Foundation
import OCICommon

// MARK: - TokenAuthenticationStaticKeysValidationPolicy

public struct TokenAuthenticationStaticKeysValidationPolicy: Codable, Sendable {

    public var additionalValidationPolicy: AdditionalValidationPolicy?
    public var keys: [JSONValue]?

    private enum CodingKeys: String, CodingKey {
        case additionalValidationPolicy, keys
    }

    public init(
                additionalValidationPolicy: AdditionalValidationPolicy? = nil,
                keys: [JSONValue]? = nil
    ) {
        self.additionalValidationPolicy = additionalValidationPolicy
        self.keys = keys
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension TokenAuthenticationStaticKeysValidationPolicy: CustomStringConvertible {
    public var description: String { "TokenAuthenticationStaticKeysValidationPolicy()" }
}