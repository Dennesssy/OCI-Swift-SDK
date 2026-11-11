import Foundation

// MARK: - BulkPinAttributeDetail

public struct BulkPinAttributeDetail: Codable, Sendable {

    public var attributeName: String?
    public var attributeNameSpace: BulkPinAttributeDetailAttributeNameSpaceEnum?

    private enum CodingKeys: String, CodingKey {
        case attributeName, attributeNameSpace
    }

    public init(
                attributeName: String? = nil,
                attributeNameSpace: BulkPinAttributeDetailAttributeNameSpaceEnum? = nil
    ) {
        self.attributeName = attributeName
        self.attributeNameSpace = attributeNameSpace
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BulkPinAttributeDetail: CustomStringConvertible {
    public var description: String { "BulkPinAttributeDetail()" }
}