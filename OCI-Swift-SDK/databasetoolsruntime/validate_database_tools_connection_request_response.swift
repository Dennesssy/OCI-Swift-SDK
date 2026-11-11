import Foundation
import OCICommon

// MARK: - ValidateDatabaseToolsConnectionRequest

public struct ValidateDatabaseToolsConnectionRequest: Codable, Sendable {
    public var databaseToolsConnectionId: String?
    public var opcRequestId: String?
    public var ifMatch: String?
    public var validateDatabaseToolsConnectionDetails: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case databaseToolsConnectionId, opcRequestId, ifMatch, validateDatabaseToolsConnectionDetails
    }

    public init(
                databaseToolsConnectionId: String? = nil,
                opcRequestId: String? = nil,
                ifMatch: String? = nil,
                validateDatabaseToolsConnectionDetails: JSONValue? = nil
    ) {
        self.databaseToolsConnectionId = databaseToolsConnectionId
        self.opcRequestId = opcRequestId
        self.ifMatch = ifMatch
        self.validateDatabaseToolsConnectionDetails = validateDatabaseToolsConnectionDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ValidateDatabaseToolsConnectionRequest: CustomStringConvertible {
    public var description: String { "ValidateDatabaseToolsConnectionRequest()" }
}

// MARK: - ValidateDatabaseToolsConnectionResponse

public struct ValidateDatabaseToolsConnectionResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var validateDatabaseToolsConnectionResult: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, validateDatabaseToolsConnectionResult
    }

    public init(
                opcRequestId: String? = nil,
                validateDatabaseToolsConnectionResult: JSONValue? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.validateDatabaseToolsConnectionResult = validateDatabaseToolsConnectionResult
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ValidateDatabaseToolsConnectionResponse: CustomStringConvertible {
    public var description: String { "ValidateDatabaseToolsConnectionResponse()" }
}