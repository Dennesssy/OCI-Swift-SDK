import Foundation
import OCICommon

// MARK: - ExecuteSqlDatabaseToolsConnectionRequest

public struct ExecuteSqlDatabaseToolsConnectionRequest: Codable, Sendable {
    public var databaseToolsConnectionId: String?
    public var opcRequestId: String?
    public var ifMatch: String?
    public var executeSqlDatabaseToolsConnectionDetails: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case databaseToolsConnectionId, opcRequestId, ifMatch, executeSqlDatabaseToolsConnectionDetails
    }

    public init(
                databaseToolsConnectionId: String? = nil,
                opcRequestId: String? = nil,
                ifMatch: String? = nil,
                executeSqlDatabaseToolsConnectionDetails: JSONValue? = nil
    ) {
        self.databaseToolsConnectionId = databaseToolsConnectionId
        self.opcRequestId = opcRequestId
        self.ifMatch = ifMatch
        self.executeSqlDatabaseToolsConnectionDetails = executeSqlDatabaseToolsConnectionDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ExecuteSqlDatabaseToolsConnectionRequest: CustomStringConvertible {
    public var description: String { "ExecuteSqlDatabaseToolsConnectionRequest()" }
}

// MARK: - ExecuteSqlDatabaseToolsConnectionResponse

public struct ExecuteSqlDatabaseToolsConnectionResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcWorkRequestId: String?
    public var executeSqlResponse: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcWorkRequestId, executeSqlResponse
    }

    public init(
                opcRequestId: String? = nil,
                opcWorkRequestId: String? = nil,
                executeSqlResponse: JSONValue? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcWorkRequestId = opcWorkRequestId
        self.executeSqlResponse = executeSqlResponse
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ExecuteSqlDatabaseToolsConnectionResponse: CustomStringConvertible {
    public var description: String { "ExecuteSqlDatabaseToolsConnectionResponse()" }
}