import Foundation

// MARK: - BulkUpdateAttributeDetails

public struct BulkUpdateAttributeDetails: Codable, Sendable {

    public var attributeDetails: [BulkUpdateAttributeDetail]?

    private enum CodingKeys: String, CodingKey {
        case attributeDetails
    }

    public init(
                attributeDetails: [BulkUpdateAttributeDetail]? = nil
    ) {
        self.attributeDetails = attributeDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BulkUpdateAttributeDetails: CustomStringConvertible {
    public var description: String { "BulkUpdateAttributeDetails()" }
}