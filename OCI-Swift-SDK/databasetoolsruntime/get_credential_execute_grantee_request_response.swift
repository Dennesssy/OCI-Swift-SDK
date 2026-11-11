import Foundation

// MARK: - GetCredentialExecuteGranteeRequest

public struct GetCredentialExecuteGranteeRequest: Codable, Sendable {
    public var databaseToolsConnectionId: String?
    public var credentialKey: String?
    public var executeGranteeKey: String?
    public var opcRequestId: String?
    public var ifMatch: String?

    private enum CodingKeys: String, CodingKey {
        case databaseToolsConnectionId, credentialKey, executeGranteeKey, opcRequestId, ifMatch
    }

    public init(
                databaseToolsConnectionId: String? = nil,
                credentialKey: String? = nil,
                executeGranteeKey: String? = nil,
                opcRequestId: String? = nil,
                ifMatch: String? = nil
    ) {
        self.databaseToolsConnectionId = databaseToolsConnectionId
        self.credentialKey = credentialKey
        self.executeGranteeKey = executeGranteeKey
        self.opcRequestId = opcRequestId
        self.ifMatch = ifMatch
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetCredentialExecuteGranteeRequest: CustomStringConvertible {
    public var description: String { "GetCredentialExecuteGranteeRequest()" }
}

// MARK: - GetCredentialExecuteGranteeResponse

public struct GetCredentialExecuteGranteeResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var credentialExecuteGrantee: CredentialExecuteGrantee?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, credentialExecuteGrantee
    }

    public init(
                opcRequestId: String? = nil,
                credentialExecuteGrantee: CredentialExecuteGrantee? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.credentialExecuteGrantee = credentialExecuteGrantee
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetCredentialExecuteGranteeResponse: CustomStringConvertible {
    public var description: String { "GetCredentialExecuteGranteeResponse()" }
}