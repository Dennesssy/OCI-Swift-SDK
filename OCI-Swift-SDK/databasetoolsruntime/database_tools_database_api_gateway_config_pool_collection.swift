import Foundation
import OCICommon

// MARK: - DatabaseToolsDatabaseApiGatewayConfigPoolCollection

public struct DatabaseToolsDatabaseApiGatewayConfigPoolCollection: Codable, Sendable {

    public var items: [JSONValue]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [JSONValue]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DatabaseToolsDatabaseApiGatewayConfigPoolCollection: CustomStringConvertible {
    public var description: String { "DatabaseToolsDatabaseApiGatewayConfigPoolCollection()" }
}