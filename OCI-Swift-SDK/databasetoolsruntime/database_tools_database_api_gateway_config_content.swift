import Foundation
import OCICommon

// MARK: - DatabaseToolsDatabaseApiGatewayConfigContent

public struct DatabaseToolsDatabaseApiGatewayConfigContent: Codable, Sendable {

    public var global: JSONValue
    public var pools: [JSONValue]?

    private enum CodingKeys: String, CodingKey {
        case global, pools
    }

    public init(
                global: JSONValue,
                pools: [JSONValue]? = nil
    ) {
        self.global = global
        self.pools = pools
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DatabaseToolsDatabaseApiGatewayConfigContent: CustomStringConvertible {
    public var description: String { "DatabaseToolsDatabaseApiGatewayConfigContent()" }
}