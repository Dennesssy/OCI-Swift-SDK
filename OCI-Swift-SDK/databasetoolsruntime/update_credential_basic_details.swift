import Foundation

// MARK: - UpdateCredentialBasicDetails

public struct UpdateCredentialBasicDetails: Codable, Sendable {

    public var userName: String?
    public var password: String?

    private enum CodingKeys: String, CodingKey {
        case userName, password
    }

    public init(
                userName: String? = nil,
                password: String? = nil
    ) {
        self.userName = userName
        self.password = password
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateCredentialBasicDetails: CustomStringConvertible {
    public var description: String { "UpdateCredentialBasicDetails()" }
}