import Foundation

// MARK: - BulkUpdateAttributeNotesDetails

public struct BulkUpdateAttributeNotesDetails: Codable, Sendable {

    public var attributeDetails: [BulkUpdateAttributeNotesDetail]?

    private enum CodingKeys: String, CodingKey {
        case attributeDetails
    }

    public init(
                attributeDetails: [BulkUpdateAttributeNotesDetail]? = nil
    ) {
        self.attributeDetails = attributeDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BulkUpdateAttributeNotesDetails: CustomStringConvertible {
    public var description: String { "BulkUpdateAttributeNotesDetails()" }
}