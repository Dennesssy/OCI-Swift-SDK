import Foundation

// MARK: - JobPriorityConfiguration

public struct JobPriorityConfiguration: Codable, Sendable {

    public var tagNamespace: String?
    public var tagKey: String?
    public var weight: Int?
    public var values: [String: Int]

    private enum CodingKeys: String, CodingKey {
        case tagNamespace, tagKey, weight, values
    }

    public init(
                tagNamespace: String? = nil,
                tagKey: String? = nil,
                weight: Int? = nil,
                values: [String: Int]
    ) {
        self.tagNamespace = tagNamespace
        self.tagKey = tagKey
        self.weight = weight
        self.values = values
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension JobPriorityConfiguration: CustomStringConvertible {
    public var description: String { "JobPriorityConfiguration()" }
}