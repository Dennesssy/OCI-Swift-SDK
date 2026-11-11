import Foundation

// MARK: - DeleteCredentialExecuteGranteeRequest

public struct DeleteCredentialExecuteGranteeRequest: Codable, Sendable {
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

extension DeleteCredentialExecuteGranteeRequest: CustomStringConvertible {
    public var description: String { "DeleteCredentialExecuteGranteeRequest()" }
}

// MARK: - DeleteCredentialExecuteGranteeResponse

public struct DeleteCredentialExecuteGranteeResponse: Codable, Sendable {
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

extension DeleteCredentialExecuteGranteeResponse: CustomStringConvertible {
    public var description: String { "DeleteCredentialExecuteGranteeResponse()" }
}