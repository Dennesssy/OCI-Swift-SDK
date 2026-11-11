import Foundation
import OCICommon

// MARK: - UpdatePropertySetOracleDatabaseExternalAuthenticationDetails

public struct UpdatePropertySetOracleDatabaseExternalAuthenticationDetails: Codable, Sendable {

    public var identityProvider: JSONValue

    private enum CodingKeys: String, CodingKey {
        case identityProvider
    }

    public init(
                identityProvider: JSONValue
    ) {
        self.identityProvider = identityProvider
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdatePropertySetOracleDatabaseExternalAuthenticationDetails: CustomStringConvertible {
    public var description: String { "UpdatePropertySetOracleDatabaseExternalAuthenticationDetails()" }
}