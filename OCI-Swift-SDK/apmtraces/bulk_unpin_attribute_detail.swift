import Foundation

// MARK: - BulkUnpinAttributeDetail

public struct BulkUnpinAttributeDetail: Codable, Sendable {

    public var attributeName: String?
    public var attributeNameSpace: BulkUnpinAttributeDetailAttributeNameSpaceEnum?

    private enum CodingKeys: String, CodingKey {
        case attributeName, attributeNameSpace
    }

    public init(
                attributeName: String? = nil,
                attributeNameSpace: BulkUnpinAttributeDetailAttributeNameSpaceEnum? = nil
    ) {
        self.attributeName = attributeName
        self.attributeNameSpace = attributeNameSpace
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BulkUnpinAttributeDetail: CustomStringConvertible {
    public var description: String { "BulkUnpinAttributeDetail()" }
}