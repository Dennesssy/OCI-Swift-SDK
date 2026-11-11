import Foundation

// MARK: - BulkUpdateAttributeDetail

public struct BulkUpdateAttributeDetail: Codable, Sendable {

    public var attributeName: String?
    public var unit: BulkUpdateAttributeDetailUnitEnum?
    public var attributeNameSpace: BulkUpdateAttributeDetailAttributeNameSpaceEnum?

    private enum CodingKeys: String, CodingKey {
        case attributeName, unit, attributeNameSpace
    }

    public init(
                attributeName: String? = nil,
                unit: BulkUpdateAttributeDetailUnitEnum? = nil,
                attributeNameSpace: BulkUpdateAttributeDetailAttributeNameSpaceEnum? = nil
    ) {
        self.attributeName = attributeName
        self.unit = unit
        self.attributeNameSpace = attributeNameSpace
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BulkUpdateAttributeDetail: CustomStringConvertible {
    public var description: String { "BulkUpdateAttributeDetail()" }
}