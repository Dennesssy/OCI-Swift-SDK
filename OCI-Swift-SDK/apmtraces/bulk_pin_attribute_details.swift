import Foundation

// MARK: - BulkPinAttributeDetails

public struct BulkPinAttributeDetails: Codable, Sendable {

    public var attributeDetails: [BulkPinAttributeDetail]?

    private enum CodingKeys: String, CodingKey {
        case attributeDetails
    }

    public init(
                attributeDetails: [BulkPinAttributeDetail]? = nil
    ) {
        self.attributeDetails = attributeDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BulkPinAttributeDetails: CustomStringConvertible {
    public var description: String { "BulkPinAttributeDetails()" }
}