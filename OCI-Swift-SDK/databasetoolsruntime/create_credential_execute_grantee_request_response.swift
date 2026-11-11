import Foundation

// MARK: - CreateCredentialExecuteGranteeRequest

public struct CreateCredentialExecuteGranteeRequest: Codable, Sendable {
    public var databaseToolsConnectionId: String?
    public var credentialKey: String?
    public var opcRequestId: String?
    public var ifMatch: String?
    public var createCredentialExecuteGranteeDetails: CreateCredentialExecuteGranteeDetails?

    private enum CodingKeys: String, CodingKey {
        case databaseToolsConnectionId, credentialKey, opcRequestId, ifMatch, createCredentialExecuteGranteeDetails
    }

    public init(
                databaseToolsConnectionId: String? = nil,
                credentialKey: String? = nil,
                opcRequestId: String? = nil,
                ifMatch: String? = nil,
                createCredentialExecuteGranteeDetails: CreateCredentialExecuteGranteeDetails? = nil
    ) {
        self.databaseToolsConnectionId = databaseToolsConnectionId
        self.credentialKey = credentialKey
        self.opcRequestId = opcRequestId
        self.ifMatch = ifMatch
        self.createCredentialExecuteGranteeDetails = createCredentialExecuteGranteeDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateCredentialExecuteGranteeRequest: CustomStringConvertible {
    public var description: String { "CreateCredentialExecuteGranteeRequest()" }
}

// MARK: - CreateCredentialExecuteGranteeResponse

public struct CreateCredentialExecuteGranteeResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var location: String?
    public var credentialExecuteGrantee: CredentialExecuteGrantee?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, location, credentialExecuteGrantee
    }

    public init(
                opcRequestId: String? = nil,
                location: String? = nil,
                credentialExecuteGrantee: CredentialExecuteGrantee? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.location = location
        self.credentialExecuteGrantee = credentialExecuteGrantee
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateCredentialExecuteGranteeResponse: CustomStringConvertible {
    public var description: String { "CreateCredentialExecuteGranteeResponse()" }
}