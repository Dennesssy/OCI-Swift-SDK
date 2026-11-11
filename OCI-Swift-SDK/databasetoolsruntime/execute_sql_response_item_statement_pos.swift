import Foundation

// MARK: - ExecuteSqlResponseItemStatementPos

public struct ExecuteSqlResponseItemStatementPos: Codable, Sendable {

    public var startLine: Int?
    public var endLine: Int?

    private enum CodingKeys: String, CodingKey {
        case startLine, endLine
    }

    public init(
                startLine: Int? = nil,
                endLine: Int? = nil
    ) {
        self.startLine = startLine
        self.endLine = endLine
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ExecuteSqlResponseItemStatementPos: CustomStringConvertible {
    public var description: String { "ExecuteSqlResponseItemStatementPos()" }
}