import Foundation

// MARK: - GetCredentialPublicSynonymRequest

public struct GetCredentialPublicSynonymRequest: Codable, Sendable {
    public var databaseToolsConnectionId: String?
    public var credentialKey: String?
    public var publicSynonymKey: String?
    public var opcRequestId: String?
    public var ifMatch: String?

    private enum CodingKeys: String, CodingKey {
        case databaseToolsConnectionId, credentialKey, publicSynonymKey, opcRequestId, ifMatch
    }

    public init(
                databaseToolsConnectionId: String? = nil,
                credentialKey: String? = nil,
                publicSynonymKey: String? = nil,
                opcRequestId: String? = nil,
                ifMatch: String? = nil
    ) {
        self.databaseToolsConnectionId = databaseToolsConnectionId
        self.credentialKey = credentialKey
        self.publicSynonymKey = publicSynonymKey
        self.opcRequestId = opcRequestId
        self.ifMatch = ifMatch
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetCredentialPublicSynonymRequest: CustomStringConvertible {
    public var description: String { "GetCredentialPublicSynonymRequest()" }
}

// MARK: - GetCredentialPublicSynonymResponse

public struct GetCredentialPublicSynonymResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var credentialPublicSynonym: CredentialPublicSynonym?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, credentialPublicSynonym
    }

    public init(
                opcRequestId: String? = nil,
                credentialPublicSynonym: CredentialPublicSynonym? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.credentialPublicSynonym = credentialPublicSynonym
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetCredentialPublicSynonymResponse: CustomStringConvertible {
    public var description: String { "GetCredentialPublicSynonymResponse()" }
}