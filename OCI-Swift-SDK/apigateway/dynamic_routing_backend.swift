import Foundation
import OCICommon

// MARK: - DynamicRoutingBackend

public struct DynamicRoutingBackend: Codable, Sendable {

    public var selectionSource: JSONValue
    public var routingBackends: [DynamicRoutingTypeRoutingBackend]

    private enum CodingKeys: String, CodingKey {
        case selectionSource, routingBackends
    }

    public init(
                selectionSource: JSONValue,
                routingBackends: [DynamicRoutingTypeRoutingBackend]
    ) {
        self.selectionSource = selectionSource
        self.routingBackends = routingBackends
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DynamicRoutingBackend: CustomStringConvertible {
    public var description: String { "DynamicRoutingBackend()" }
}