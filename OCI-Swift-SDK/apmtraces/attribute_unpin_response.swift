import Foundation

// MARK: - AttributeUnpinResponse

public struct AttributeUnpinResponse: Codable, Sendable {

    public var attributeName: String?
    public var operationType: AttributeUnpinResponseOperationTypeEnum
    public var attributeNameSpace: AttributeUnpinResponseAttributeNameSpaceEnum
    public var attributeStatus: AttributeUnpinResponseAttributeStatusEnum
    public var timeUpdated: Date?

    private enum CodingKeys: String, CodingKey {
        case attributeName, operationType, attributeNameSpace, attributeStatus, timeUpdated
    }

    public init(
                attributeName: String? = nil,
                operationType: AttributeUnpinResponseOperationTypeEnum,
                attributeNameSpace: AttributeUnpinResponseAttributeNameSpaceEnum,
                attributeStatus: AttributeUnpinResponseAttributeStatusEnum,
                timeUpdated: Date? = nil
    ) {
        self.attributeName = attributeName
        self.operationType = operationType
        self.attributeNameSpace = attributeNameSpace
        self.attributeStatus = attributeStatus
        self.timeUpdated = timeUpdated
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension AttributeUnpinResponse: CustomStringConvertible {
    public var description: String { "AttributeUnpinResponse()" }
}