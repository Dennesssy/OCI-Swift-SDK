import Foundation

// MARK: - BulkDeActivateAttributeDetails

public struct BulkDeActivateAttributeDetails: Codable, Sendable {

    public var attributeDetails: [BulkDeActivateAttributeDetail]?

    private enum CodingKeys: String, CodingKey {
        case attributeDetails
    }

    public init(
                attributeDetails: [BulkDeActivateAttributeDetail]? = nil
    ) {
        self.attributeDetails = attributeDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BulkDeActivateAttributeDetails: CustomStringConvertible {
    public var description: String { "BulkDeActivateAttributeDetails()" }
}