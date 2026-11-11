import Foundation

// MARK: - DatabaseToolConnection

public struct DatabaseToolConnection: Codable, Sendable {

    public var connectionId: String?

    private enum CodingKeys: String, CodingKey {
        case connectionId
    }

    public init(
                connectionId: String? = nil
    ) {
        self.connectionId = connectionId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DatabaseToolConnection: CustomStringConvertible {
    public var description: String { "DatabaseToolConnection()" }
}