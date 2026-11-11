import Foundation

// MARK: - ExecuteSqlResponseItemError

public struct ExecuteSqlResponseItemError: Codable, Sendable {

    public var errorCode: Int?
    public var errorLine: Int?
    public var errorColumn: Int?
    public var errorMessage: String?
    public var errorDetails: String?

    private enum CodingKeys: String, CodingKey {
        case errorCode, errorLine, errorColumn, errorMessage, errorDetails
    }

    public init(
                errorCode: Int? = nil,
                errorLine: Int? = nil,
                errorColumn: Int? = nil,
                errorMessage: String? = nil,
                errorDetails: String? = nil
    ) {
        self.errorCode = errorCode
        self.errorLine = errorLine
        self.errorColumn = errorColumn
        self.errorMessage = errorMessage
        self.errorDetails = errorDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ExecuteSqlResponseItemError: CustomStringConvertible {
    public var description: String { "ExecuteSqlResponseItemError()" }
}