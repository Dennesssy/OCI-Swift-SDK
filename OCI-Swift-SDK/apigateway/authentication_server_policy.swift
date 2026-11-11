import Foundation
import OCICommon

// MARK: - AuthenticationServerPolicy

public struct AuthenticationServerPolicy: Codable, Sendable {

    public var key: JSONValue
    public var authenticationServerDetail: JSONValue

    private enum CodingKeys: String, CodingKey {
        case key, authenticationServerDetail
    }

    public init(
                key: JSONValue,
                authenticationServerDetail: JSONValue
    ) {
        self.key = key
        self.authenticationServerDetail = authenticationServerDetail
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension AuthenticationServerPolicy: CustomStringConvertible {
    public var description: String { "AuthenticationServerPolicy()" }
}