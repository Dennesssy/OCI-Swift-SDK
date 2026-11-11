import Foundation

// MARK: - AttributePinResponse

public struct AttributePinResponse: Codable, Sendable {

    public var attributeName: String?
    public var notes: String?
    public var operationType: AttributePinResponseOperationTypeEnum
    public var attributeNameSpace: AttributePinResponseAttributeNameSpaceEnum
    public var attributeStatus: AttributePinResponseAttributeStatusEnum
    public var timeUpdated: Date?

    private enum CodingKeys: String, CodingKey {
        case attributeName, notes, operationType, attributeNameSpace, attributeStatus, timeUpdated
    }

    public init(
                attributeName: String? = nil,
                notes: String? = nil,
                operationType: AttributePinResponseOperationTypeEnum,
                attributeNameSpace: AttributePinResponseAttributeNameSpaceEnum,
                attributeStatus: AttributePinResponseAttributeStatusEnum,
                timeUpdated: Date? = nil
    ) {
        self.attributeName = attributeName
        self.notes = notes
        self.operationType = operationType
        self.attributeNameSpace = attributeNameSpace
        self.attributeStatus = attributeStatus
        self.timeUpdated = timeUpdated
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension AttributePinResponse: CustomStringConvertible {
    public var description: String { "AttributePinResponse()" }
}