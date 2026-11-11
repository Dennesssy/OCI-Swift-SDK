import Foundation
import OCICommon

// MARK: - ValidateDatabaseToolsIdentityCredentialRequest

public struct ValidateDatabaseToolsIdentityCredentialRequest: Codable, Sendable {
    public var databaseToolsIdentityId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var validateDatabaseToolsIdentityCredentialDetails: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case databaseToolsIdentityId, ifMatch, opcRequestId, validateDatabaseToolsIdentityCredentialDetails
    }

    public init(
                databaseToolsIdentityId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                validateDatabaseToolsIdentityCredentialDetails: JSONValue? = nil
    ) {
        self.databaseToolsIdentityId = databaseToolsIdentityId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.validateDatabaseToolsIdentityCredentialDetails = validateDatabaseToolsIdentityCredentialDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ValidateDatabaseToolsIdentityCredentialRequest: CustomStringConvertible {
    public var description: String { "ValidateDatabaseToolsIdentityCredentialRequest()" }
}

// MARK: - ValidateDatabaseToolsIdentityCredentialResponse

public struct ValidateDatabaseToolsIdentityCredentialResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var validateDatabaseToolsIdentityCredentialResult: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, validateDatabaseToolsIdentityCredentialResult
    }

    public init(
                opcRequestId: String? = nil,
                validateDatabaseToolsIdentityCredentialResult: JSONValue? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.validateDatabaseToolsIdentityCredentialResult = validateDatabaseToolsIdentityCredentialResult
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ValidateDatabaseToolsIdentityCredentialResponse: CustomStringConvertible {
    public var description: String { "ValidateDatabaseToolsIdentityCredentialResponse()" }
}