import Foundation

// MARK: - OracleDbAwsKeyPoolCollection

public struct OracleDbAwsKeyPoolCollection: Codable, Sendable {

    public var items: [OracleDbAwsKeyPoolSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [OracleDbAwsKeyPoolSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension OracleDbAwsKeyPoolCollection: CustomStringConvertible {
    public var description: String { "OracleDbAwsKeyPoolCollection()" }
}