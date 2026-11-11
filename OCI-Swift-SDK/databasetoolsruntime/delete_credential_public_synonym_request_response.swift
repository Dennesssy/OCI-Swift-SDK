import Foundation

// MARK: - DeleteCredentialPublicSynonymRequest

public struct DeleteCredentialPublicSynonymRequest: Codable, Sendable {
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

extension DeleteCredentialPublicSynonymRequest: CustomStringConvertible {
    public var description: String { "DeleteCredentialPublicSynonymRequest()" }
}

// MARK: - DeleteCredentialPublicSynonymResponse

public struct DeleteCredentialPublicSynonymResponse: Codable, Sendable {
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId
    }

    public init(
                opcRequestId: String? = nil
    ) {
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteCredentialPublicSynonymResponse: CustomStringConvertible {
    public var description: String { "DeleteCredentialPublicSynonymResponse()" }
}