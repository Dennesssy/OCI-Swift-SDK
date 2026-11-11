import Foundation

// MARK: - DatabaseToolsDatabaseApiGatewayConfigAdvancedPropertySummaryCollection

public struct DatabaseToolsDatabaseApiGatewayConfigAdvancedPropertySummaryCollection: Codable, Sendable {

    public var items: [DatabaseToolsDatabaseApiGatewayConfigAdvancedPropertySummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [DatabaseToolsDatabaseApiGatewayConfigAdvancedPropertySummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DatabaseToolsDatabaseApiGatewayConfigAdvancedPropertySummaryCollection: CustomStringConvertible {
    public var description: String { "DatabaseToolsDatabaseApiGatewayConfigAdvancedPropertySummaryCollection()" }
}