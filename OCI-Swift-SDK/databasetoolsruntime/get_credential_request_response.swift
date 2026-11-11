import Foundation

// MARK: - GetCredentialRequest

public struct GetCredentialRequest: Codable, Sendable {
    public var databaseToolsConnectionId: String?
    public var credentialKey: String?
    public var opcRequestId: String?
    public var ifMatch: String?

    private enum CodingKeys: String, CodingKey {
        case databaseToolsConnectionId, credentialKey, opcRequestId, ifMatch
    }

    public init(
                databaseToolsConnectionId: String? = nil,
                credentialKey: String? = nil,
                opcRequestId: String? = nil,
                ifMatch: String? = nil
    ) {
        self.databaseToolsConnectionId = databaseToolsConnectionId
        self.credentialKey = credentialKey
        self.opcRequestId = opcRequestId
        self.ifMatch = ifMatch
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetCredentialRequest: CustomStringConvertible {
    public var description: String { "GetCredentialRequest()" }
}

// MARK: - GetCredentialResponse

public struct GetCredentialResponse: Codable, Sendable {
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

extension GetCredentialResponse: CustomStringConvertible {
    public var description: String { "GetCredentialResponse()" }
}