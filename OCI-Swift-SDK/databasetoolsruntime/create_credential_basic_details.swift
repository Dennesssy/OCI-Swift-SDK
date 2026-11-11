import Foundation

// MARK: - CreateCredentialBasicDetails

public struct CreateCredentialBasicDetails: Codable, Sendable {

    public var key: String?
    public var userName: String?
    public var password: String?

    private enum CodingKeys: String, CodingKey {
        case key, userName, password
    }

    public init(
                key: String? = nil,
                userName: String? = nil,
                password: String? = nil
    ) {
        self.key = key
        self.userName = userName
        self.password = password
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateCredentialBasicDetails: CustomStringConvertible {
    public var description: String { "CreateCredentialBasicDetails()" }
}