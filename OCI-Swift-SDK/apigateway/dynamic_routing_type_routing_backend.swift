import Foundation
import OCICommon

// MARK: - DynamicRoutingTypeRoutingBackend

public struct DynamicRoutingTypeRoutingBackend: Codable, Sendable {

    public var key: JSONValue
    public var backend: JSONValue

    private enum CodingKeys: String, CodingKey {
        case key, backend
    }

    public init(
                key: JSONValue,
                backend: JSONValue
    ) {
        self.key = key
        self.backend = backend
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DynamicRoutingTypeRoutingBackend: CustomStringConvertible {
    public var description: String { "DynamicRoutingTypeRoutingBackend()" }
}