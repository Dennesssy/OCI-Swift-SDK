import Foundation

// MARK: - MulticloudPolicyCollection

public struct MulticloudPolicyCollection: Codable, Sendable {

    public var compartmentId: String?
    public var items: [MulticloudPolicySummary]?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, items
    }

    public init(
                compartmentId: String? = nil,
                items: [MulticloudPolicySummary]? = nil
    ) {
        self.compartmentId = compartmentId
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension MulticloudPolicyCollection: CustomStringConvertible {
    public var description: String { "MulticloudPolicyCollection()" }
}