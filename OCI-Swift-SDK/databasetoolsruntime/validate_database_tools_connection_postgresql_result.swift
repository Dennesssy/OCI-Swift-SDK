import Foundation

// MARK: - ValidateDatabaseToolsConnectionPostgresqlResult

public struct ValidateDatabaseToolsConnectionPostgresqlResult: Codable, Sendable {

    public var code: String?
    public var message: String?
    public var databaseVersion: String?
    public var cause: String?
    public var action: String?
    public var databaseName: String?

    private enum CodingKeys: String, CodingKey {
        case code, message, databaseVersion, cause, action, databaseName
    }

    public init(
                code: String? = nil,
                message: String? = nil,
                databaseVersion: String? = nil,
                cause: String? = nil,
                action: String? = nil,
                databaseName: String? = nil
    ) {
        self.code = code
        self.message = message
        self.databaseVersion = databaseVersion
        self.cause = cause
        self.action = action
        self.databaseName = databaseName
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ValidateDatabaseToolsConnectionPostgresqlResult: CustomStringConvertible {
    public var description: String { "ValidateDatabaseToolsConnectionPostgresqlResult()" }
}