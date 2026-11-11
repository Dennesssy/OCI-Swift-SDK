import Foundation

// MARK: - BulkUnpinAttributeDetails

public struct BulkUnpinAttributeDetails: Codable, Sendable {

    public var attributeDetails: [BulkUnpinAttributeDetail]?

    private enum CodingKeys: String, CodingKey {
        case attributeDetails
    }

    public init(
                attributeDetails: [BulkUnpinAttributeDetail]? = nil
    ) {
        self.attributeDetails = attributeDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BulkUnpinAttributeDetails: CustomStringConvertible {
    public var description: String { "BulkUnpinAttributeDetails()" }
}