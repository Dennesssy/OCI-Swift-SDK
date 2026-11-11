import Foundation

// MARK: - GetUserCredentialRequest

public struct GetUserCredentialRequest: Codable, Sendable {
    public var databaseToolsConnectionId: String?
    public var userKey: String?
    public var credentialKey: String?
    public var opcRequestId: String?
    public var ifMatch: String?

    private enum CodingKeys: String, CodingKey {
        case databaseToolsConnectionId, userKey, credentialKey, opcRequestId, ifMatch
    }

    public init(
                databaseToolsConnectionId: String? = nil,
                userKey: String? = nil,
                credentialKey: String? = nil,
                opcRequestId: String? = nil,
                ifMatch: String? = nil
    ) {
        self.databaseToolsConnectionId = databaseToolsConnectionId
        self.userKey = userKey
        self.credentialKey = credentialKey
        self.opcRequestId = opcRequestId
        self.ifMatch = ifMatch
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetUserCredentialRequest: CustomStringConvertible {
    public var description: String { "GetUserCredentialRequest()" }
}

// MARK: - GetUserCredentialResponse

public struct GetUserCredentialResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var userCredential: UserCredential?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, userCredential
    }

    public init(
                opcRequestId: String? = nil,
                userCredential: UserCredential? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.userCredential = userCredential
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetUserCredentialResponse: CustomStringConvertible {
    public var description: String { "GetUserCredentialResponse()" }
}