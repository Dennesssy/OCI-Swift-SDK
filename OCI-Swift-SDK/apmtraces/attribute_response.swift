import Foundation

// MARK: - AttributeResponse

public struct AttributeResponse: Codable, Sendable {

    public var attributeName: String?
    public var attributeType: AttributeResponseAttributeTypeEnum
    public var operationType: AttributeResponseOperationTypeEnum
    public var attributeNameSpace: AttributeResponseAttributeNameSpaceEnum
    public var attributeStatus: AttributeResponseAttributeStatusEnum
    public var timeUpdated: Date?
    public var unit: AttributeResponseUnitEnum?
    public var notes: String?

    private enum CodingKeys: String, CodingKey {
        case attributeName, attributeType, operationType, attributeNameSpace, attributeStatus, timeUpdated, unit, notes
    }

    public init(
                attributeName: String? = nil,
                attributeType: AttributeResponseAttributeTypeEnum,
                operationType: AttributeResponseOperationTypeEnum,
                attributeNameSpace: AttributeResponseAttributeNameSpaceEnum,
                attributeStatus: AttributeResponseAttributeStatusEnum,
                timeUpdated: Date? = nil,
                unit: AttributeResponseUnitEnum? = nil,
                notes: String? = nil
    ) {
        self.attributeName = attributeName
        self.attributeType = attributeType
        self.operationType = operationType
        self.attributeNameSpace = attributeNameSpace
        self.attributeStatus = attributeStatus
        self.timeUpdated = timeUpdated
        self.unit = unit
        self.notes = notes
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension AttributeResponse: CustomStringConvertible {
    public var description: String { "AttributeResponse()" }
}