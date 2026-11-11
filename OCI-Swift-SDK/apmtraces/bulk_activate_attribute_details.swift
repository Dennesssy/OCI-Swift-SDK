import Foundation

// MARK: - BulkActivateAttributeDetails

public struct BulkActivateAttributeDetails: Codable, Sendable {

    public var attributeDetails: [BulkActivateAttributeDetail]?

    private enum CodingKeys: String, CodingKey {
        case attributeDetails
    }

    public init(
                attributeDetails: [BulkActivateAttributeDetail]? = nil
    ) {
        self.attributeDetails = attributeDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BulkActivateAttributeDetails: CustomStringConvertible {
    public var description: String { "BulkActivateAttributeDetails()" }
}