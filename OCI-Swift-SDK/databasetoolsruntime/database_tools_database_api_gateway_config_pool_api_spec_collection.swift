import Foundation
import OCICommon

// MARK: - DatabaseToolsDatabaseApiGatewayConfigPoolApiSpecCollection

public struct DatabaseToolsDatabaseApiGatewayConfigPoolApiSpecCollection: Codable, Sendable {

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

extension DatabaseToolsDatabaseApiGatewayConfigPoolApiSpecCollection: CustomStringConvertible {
    public var description: String { "DatabaseToolsDatabaseApiGatewayConfigPoolApiSpecCollection()" }
}