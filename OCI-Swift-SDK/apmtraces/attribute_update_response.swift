import Foundation

// MARK: - AttributeUpdateResponse

public struct AttributeUpdateResponse: Codable, Sendable {

    public var attributeName: String?
    public var attributeNameSpace: AttributeUpdateResponseAttributeNameSpaceEnum
    public var timeUpdated: Date?
    public var attributeType: AttributeUpdateResponseAttributeTypeEnum?
    public var unit: AttributeUpdateResponseUnitEnum?
    public var notes: String?
    public var operationType: AttributeUpdateResponseOperationTypeEnum?
    public var attributeStatus: AttributeUpdateResponseAttributeStatusEnum?

    private enum CodingKeys: String, CodingKey {
        case attributeName, attributeNameSpace, timeUpdated, attributeType, unit, notes, operationType, attributeStatus
    }

    public init(
                attributeName: String? = nil,
                attributeNameSpace: AttributeUpdateResponseAttributeNameSpaceEnum,
                timeUpdated: Date? = nil,
                attributeType: AttributeUpdateResponseAttributeTypeEnum? = nil,
                unit: AttributeUpdateResponseUnitEnum? = nil,
                notes: String? = nil,
                operationType: AttributeUpdateResponseOperationTypeEnum? = nil,
                attributeStatus: AttributeUpdateResponseAttributeStatusEnum? = nil
    ) {
        self.attributeName = attributeName
        self.attributeNameSpace = attributeNameSpace
        self.timeUpdated = timeUpdated
        self.attributeType = attributeType
        self.unit = unit
        self.notes = notes
        self.operationType = operationType
        self.attributeStatus = attributeStatus
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension AttributeUpdateResponse: CustomStringConvertible {
    public var description: String { "AttributeUpdateResponse()" }
}