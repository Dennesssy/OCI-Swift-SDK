import Foundation

// MARK: - BulkUpdateAttributeNotesDetail

public struct BulkUpdateAttributeNotesDetail: Codable, Sendable {

    public var attributeName: String?
    public var notes: String?
    public var attributeNameSpace: BulkUpdateAttributeNotesDetailAttributeNameSpaceEnum?

    private enum CodingKeys: String, CodingKey {
        case attributeName, notes, attributeNameSpace
    }

    public init(
                attributeName: String? = nil,
                notes: String? = nil,
                attributeNameSpace: BulkUpdateAttributeNotesDetailAttributeNameSpaceEnum? = nil
    ) {
        self.attributeName = attributeName
        self.notes = notes
        self.attributeNameSpace = attributeNameSpace
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BulkUpdateAttributeNotesDetail: CustomStringConvertible {
    public var description: String { "BulkUpdateAttributeNotesDetail()" }
}