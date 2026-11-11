import Foundation

// MARK: - AttributeMetadata

public struct AttributeMetadata: Codable, Sendable {

    public var attributeType: AttributeMetadataAttributeTypeEnum?
    public var attributeUnit: AttributeMetadataAttributeUnitEnum?

    private enum CodingKeys: String, CodingKey {
        case attributeType, attributeUnit
    }

    public init(
                attributeType: AttributeMetadataAttributeTypeEnum? = nil,
                attributeUnit: AttributeMetadataAttributeUnitEnum? = nil
    ) {
        self.attributeType = attributeType
        self.attributeUnit = attributeUnit
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension AttributeMetadata: CustomStringConvertible {
    public var description: String { "AttributeMetadata()" }
}