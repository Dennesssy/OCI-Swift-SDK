import Foundation

// MARK: - BulkDeleteTagsDetails

public struct BulkDeleteTagsDetails: Codable, Sendable {

    public var tagDefinitionIds: [String]

    private enum CodingKeys: String, CodingKey {
        case tagDefinitionIds
    }

    public init(
                tagDefinitionIds: [String]
    ) {
        self.tagDefinitionIds = tagDefinitionIds
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BulkDeleteTagsDetails: CustomStringConvertible {
    public var description: String { "BulkDeleteTagsDetails()" }
}