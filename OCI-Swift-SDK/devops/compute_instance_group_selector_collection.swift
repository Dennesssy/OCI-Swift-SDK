import Foundation
import OCICommon

// MARK: - ComputeInstanceGroupSelectorCollection

public struct ComputeInstanceGroupSelectorCollection: Codable, Sendable {

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

extension ComputeInstanceGroupSelectorCollection: CustomStringConvertible {
    public var description: String { "ComputeInstanceGroupSelectorCollection()" }
}