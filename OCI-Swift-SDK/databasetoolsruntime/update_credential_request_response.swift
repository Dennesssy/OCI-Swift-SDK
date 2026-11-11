import Foundation
import OCICommon

// MARK: - UpdateCredentialRequest

public struct UpdateCredentialRequest: Codable, Sendable {
    public var databaseToolsConnectionId: String?
    public var credentialKey: String?
    public var opcRequestId: String?
    public var ifMatch: String?
    public var updateCredentialDetails: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case databaseToolsConnectionId, credentialKey, opcRequestId, ifMatch, updateCredentialDetails
    }

    public init(
                databaseToolsConnectionId: String? = nil,
                credentialKey: String? = nil,
                opcRequestId: String? = nil,
                ifMatch: String? = nil,
                updateCredentialDetails: JSONValue? = nil
    ) {
        self.databaseToolsConnectionId = databaseToolsConnectionId
        self.credentialKey = credentialKey
        self.opcRequestId = opcRequestId
        self.ifMatch = ifMatch
        self.updateCredentialDetails = updateCredentialDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateCredentialRequest: CustomStringConvertible {
    public var description: String { "UpdateCredentialRequest()" }
}

// MARK: - UpdateCredentialResponse

public struct UpdateCredentialResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var credential: Credential?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, credential
    }

    public init(
                opcRequestId: String? = nil,
                credential: Credential? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.credential = credential
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateCredentialResponse: CustomStringConvertible {
    public var description: String { "UpdateCredentialResponse()" }
}