import Foundation

// MARK: - BulkActivateAttributeDetail

public struct BulkActivateAttributeDetail: Codable, Sendable {

    public var attributeName: String?
    public var attributeType: BulkActivateAttributeDetailAttributeTypeEnum
    public var attributeExpression: String?
    public var unit: BulkActivateAttributeDetailUnitEnum?
    public var attributeNameSpace: BulkActivateAttributeDetailAttributeNameSpaceEnum?

    private enum CodingKeys: String, CodingKey {
        case attributeName, attributeType, attributeExpression, unit, attributeNameSpace
    }

    public init(
                attributeName: String? = nil,
                attributeType: BulkActivateAttributeDetailAttributeTypeEnum,
                attributeExpression: String? = nil,
                unit: BulkActivateAttributeDetailUnitEnum? = nil,
                attributeNameSpace: BulkActivateAttributeDetailAttributeNameSpaceEnum? = nil
    ) {
        self.attributeName = attributeName
        self.attributeType = attributeType
        self.attributeExpression = attributeExpression
        self.unit = unit
        self.attributeNameSpace = attributeNameSpace
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BulkActivateAttributeDetail: CustomStringConvertible {
    public var description: String { "BulkActivateAttributeDetail()" }
}