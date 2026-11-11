import Foundation
import OCICommon

// MARK: - PatchLimitsIncreaseRequestDetails

public struct PatchLimitsIncreaseRequestDetails: Codable, Sendable {

    public var items: [JSONValue]?

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [JSONValue]? = nil
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension PatchLimitsIncreaseRequestDetails: CustomStringConvertible {
    public var description: String { "PatchLimitsIncreaseRequestDetails()" }
}