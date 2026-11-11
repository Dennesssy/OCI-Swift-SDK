import Foundation

// MARK: - AttributeUpdateNotesResponse

public struct AttributeUpdateNotesResponse: Codable, Sendable {

    public var attributeName: String?
    public var notes: String?
    public var operationType: AttributeUpdateNotesResponseOperationTypeEnum
    public var attributeNameSpace: AttributeUpdateNotesResponseAttributeNameSpaceEnum
    public var attributeStatus: AttributeUpdateNotesResponseAttributeStatusEnum
    public var timeUpdated: Date?

    private enum CodingKeys: String, CodingKey {
        case attributeName, notes, operationType, attributeNameSpace, attributeStatus, timeUpdated
    }

    public init(
                attributeName: String? = nil,
                notes: String? = nil,
                operationType: AttributeUpdateNotesResponseOperationTypeEnum,
                attributeNameSpace: AttributeUpdateNotesResponseAttributeNameSpaceEnum,
                attributeStatus: AttributeUpdateNotesResponseAttributeStatusEnum,
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

extension AttributeUpdateNotesResponse: CustomStringConvertible {
    public var description: String { "AttributeUpdateNotesResponse()" }
}