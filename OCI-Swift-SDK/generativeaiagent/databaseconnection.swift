import Foundation

// MARK: - databaseconnection

public struct databaseconnection: Codable, Sendable {

    public var jsonData: Data?
    public var connectionType: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, connectionType
    }

    public init(
                jsonData: Data? = nil,
                connectionType: String? = nil
    ) {
        self.jsonData = jsonData
        self.connectionType = connectionType
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension databaseconnection: CustomStringConvertible {
    public var description: String { "databaseconnection()" }
}