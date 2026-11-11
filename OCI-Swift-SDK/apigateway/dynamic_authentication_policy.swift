import Foundation
import OCICommon

// MARK: - DynamicAuthenticationPolicy

public struct DynamicAuthenticationPolicy: Codable, Sendable {

    public var selectionSource: JSONValue
    public var authenticationServers: [AuthenticationServerPolicy]

    private enum CodingKeys: String, CodingKey {
        case selectionSource, authenticationServers
    }

    public init(
                selectionSource: JSONValue,
                authenticationServers: [AuthenticationServerPolicy]
    ) {
        self.selectionSource = selectionSource
        self.authenticationServers = authenticationServers
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DynamicAuthenticationPolicy: CustomStringConvertible {
    public var description: String { "DynamicAuthenticationPolicy()" }
}