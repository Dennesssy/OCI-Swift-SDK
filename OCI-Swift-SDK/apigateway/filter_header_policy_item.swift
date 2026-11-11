import Foundation

// MARK: - FilterHeaderPolicyItem

public struct FilterHeaderPolicyItem: Codable, Sendable {

    public var name: String?

    private enum CodingKeys: String, CodingKey {
        case name
    }

    public init(
                name: String? = nil
    ) {
        self.name = name
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension FilterHeaderPolicyItem: CustomStringConvertible {
    public var description: String { "FilterHeaderPolicyItem()" }
}