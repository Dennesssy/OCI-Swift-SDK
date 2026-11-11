import Foundation

// MARK: - BulkDeActivateAttributeDetail

public struct BulkDeActivateAttributeDetail: Codable, Sendable {

    public var attributeName: String?
    public var attributeNameSpace: BulkDeActivateAttributeDetailAttributeNameSpaceEnum?

    private enum CodingKeys: String, CodingKey {
        case attributeName, attributeNameSpace
    }

    public init(
                attributeName: String? = nil,
                attributeNameSpace: BulkDeActivateAttributeDetailAttributeNameSpaceEnum? = nil
    ) {
        self.attributeName = attributeName
        self.attributeNameSpace = attributeNameSpace
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BulkDeActivateAttributeDetail: CustomStringConvertible {
    public var description: String { "BulkDeActivateAttributeDetail()" }
}