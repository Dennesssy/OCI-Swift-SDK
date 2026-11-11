import Foundation

// MARK: - MetadataFilter

public struct MetadataFilter: Codable, Sendable {

    public var fieldName: String?
    public var value: String?

    private enum CodingKeys: String, CodingKey {
        case fieldName, value
    }

    public init(
                fieldName: String? = nil,
                value: String? = nil
    ) {
        self.fieldName = fieldName
        self.value = value
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension MetadataFilter: CustomStringConvertible {
    public var description: String { "MetadataFilter()" }
}