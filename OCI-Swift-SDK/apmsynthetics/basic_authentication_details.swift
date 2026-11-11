import Foundation
import OCICommon

// MARK: - BasicAuthenticationDetails

public struct BasicAuthenticationDetails: Codable, Sendable {

    public var username: String?
    public var password: JSONValue

    private enum CodingKeys: String, CodingKey {
        case username, password
    }

    public init(
                username: String? = nil,
                password: JSONValue
    ) {
        self.username = username
        self.password = password
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BasicAuthenticationDetails: CustomStringConvertible {
    public var description: String { "BasicAuthenticationDetails()" }
}