import Foundation

// MARK: - TagMetadata

public struct TagMetadata: Codable, Sendable {

    public var tagType: TagMetadataTagTypeEnum?
    public var tagUnit: TagMetadataTagUnitEnum?

    private enum CodingKeys: String, CodingKey {
        case tagType, tagUnit
    }

    public init(
                tagType: TagMetadataTagTypeEnum? = nil,
                tagUnit: TagMetadataTagUnitEnum? = nil
    ) {
        self.tagType = tagType
        self.tagUnit = tagUnit
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension TagMetadata: CustomStringConvertible {
    public var description: String { "TagMetadata()" }
}