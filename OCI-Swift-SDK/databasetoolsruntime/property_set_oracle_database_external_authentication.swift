import Foundation
import OCICommon

// MARK: - PropertySetOracleDatabaseExternalAuthentication

public struct PropertySetOracleDatabaseExternalAuthentication: Codable, Sendable {

    public var isMutable: Bool?
    public var identityProvider: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case isMutable, identityProvider
    }

    public init(
                isMutable: Bool? = nil,
                identityProvider: JSONValue? = nil
    ) {
        self.isMutable = isMutable
        self.identityProvider = identityProvider
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension PropertySetOracleDatabaseExternalAuthentication: CustomStringConvertible {
    public var description: String { "PropertySetOracleDatabaseExternalAuthentication()" }
}