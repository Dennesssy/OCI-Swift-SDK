import Foundation
import OCICommon

// MARK: - OciDatabaseConfig

public struct OciDatabaseConfig: Codable, Sendable {

    public var databaseConnection: JSONValue
    public var databaseFunctions: [DatabaseFunction]

    private enum CodingKeys: String, CodingKey {
        case databaseConnection, databaseFunctions
    }

    public init(
                databaseConnection: JSONValue,
                databaseFunctions: [DatabaseFunction]
    ) {
        self.databaseConnection = databaseConnection
        self.databaseFunctions = databaseFunctions
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension OciDatabaseConfig: CustomStringConvertible {
    public var description: String { "OciDatabaseConfig()" }
}