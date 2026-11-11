import Foundation

// MARK: - FilterQueryParameterPolicyItem

public struct FilterQueryParameterPolicyItem: Codable, Sendable {

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

extension FilterQueryParameterPolicyItem: CustomStringConvertible {
    public var description: String { "FilterQueryParameterPolicyItem()" }
}