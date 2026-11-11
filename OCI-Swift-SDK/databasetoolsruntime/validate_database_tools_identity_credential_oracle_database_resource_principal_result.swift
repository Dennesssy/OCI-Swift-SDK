import Foundation

// MARK: - ValidateDatabaseToolsIdentityCredentialOracleDatabaseResourcePrincipalResult

public struct ValidateDatabaseToolsIdentityCredentialOracleDatabaseResourcePrincipalResult: Codable, Sendable {

    public var code: String?
    public var message: String?
    public var cause: String?
    public var action: String?

    private enum CodingKeys: String, CodingKey {
        case code, message, cause, action
    }

    public init(
                code: String? = nil,
                message: String? = nil,
                cause: String? = nil,
                action: String? = nil
    ) {
        self.code = code
        self.message = message
        self.cause = cause
        self.action = action
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ValidateDatabaseToolsIdentityCredentialOracleDatabaseResourcePrincipalResult: CustomStringConvertible {
    public var description: String { "ValidateDatabaseToolsIdentityCredentialOracleDatabaseResourcePrincipalResult()" }
}