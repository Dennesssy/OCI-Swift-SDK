import Foundation

// MARK: - CreateCredentialPublicSynonymRequest

public struct CreateCredentialPublicSynonymRequest: Codable, Sendable {
    public var databaseToolsConnectionId: String?
    public var credentialKey: String?
    public var opcRequestId: String?
    public var ifMatch: String?
    public var createCredentialPublicSynonymDetails: CreateCredentialPublicSynonymDetails?

    private enum CodingKeys: String, CodingKey {
        case databaseToolsConnectionId, credentialKey, opcRequestId, ifMatch, createCredentialPublicSynonymDetails
    }

    public init(
                databaseToolsConnectionId: String? = nil,
                credentialKey: String? = nil,
                opcRequestId: String? = nil,
                ifMatch: String? = nil,
                createCredentialPublicSynonymDetails: CreateCredentialPublicSynonymDetails? = nil
    ) {
        self.databaseToolsConnectionId = databaseToolsConnectionId
        self.credentialKey = credentialKey
        self.opcRequestId = opcRequestId
        self.ifMatch = ifMatch
        self.createCredentialPublicSynonymDetails = createCredentialPublicSynonymDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateCredentialPublicSynonymRequest: CustomStringConvertible {
    public var description: String { "CreateCredentialPublicSynonymRequest()" }
}

// MARK: - CreateCredentialPublicSynonymResponse

public struct CreateCredentialPublicSynonymResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var location: String?
    public var credentialPublicSynonym: CredentialPublicSynonym?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, location, credentialPublicSynonym
    }

    public init(
                opcRequestId: String? = nil,
                location: String? = nil,
                credentialPublicSynonym: CredentialPublicSynonym? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.location = location
        self.credentialPublicSynonym = credentialPublicSynonym
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateCredentialPublicSynonymResponse: CustomStringConvertible {
    public var description: String { "CreateCredentialPublicSynonymResponse()" }
}