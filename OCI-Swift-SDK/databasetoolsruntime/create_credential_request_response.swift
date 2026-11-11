import Foundation
import OCICommon

// MARK: - CreateCredentialRequest

public struct CreateCredentialRequest: Codable, Sendable {
    public var databaseToolsConnectionId: String?
    public var opcRequestId: String?
    public var ifMatch: String?
    public var createCredentialDetails: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case databaseToolsConnectionId, opcRequestId, ifMatch, createCredentialDetails
    }

    public init(
                databaseToolsConnectionId: String? = nil,
                opcRequestId: String? = nil,
                ifMatch: String? = nil,
                createCredentialDetails: JSONValue? = nil
    ) {
        self.databaseToolsConnectionId = databaseToolsConnectionId
        self.opcRequestId = opcRequestId
        self.ifMatch = ifMatch
        self.createCredentialDetails = createCredentialDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateCredentialRequest: CustomStringConvertible {
    public var description: String { "CreateCredentialRequest()" }
}

// MARK: - CreateCredentialResponse

public struct CreateCredentialResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var location: String?
    public var credential: Credential?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, location, credential
    }

    public init(
                opcRequestId: String? = nil,
                location: String? = nil,
                credential: Credential? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.location = location
        self.credential = credential
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateCredentialResponse: CustomStringConvertible {
    public var description: String { "CreateCredentialResponse()" }
}