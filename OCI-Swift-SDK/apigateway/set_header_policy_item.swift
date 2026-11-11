import Foundation

// MARK: - SetHeaderPolicyItem

public struct SetHeaderPolicyItem: Codable, Sendable {

    public var name: String?
    public var values: [String]
    public var ifExists: SetHeaderPolicyItemIfExistsEnum?

    private enum CodingKeys: String, CodingKey {
        case name, values, ifExists
    }

    public init(
                name: String? = nil,
                values: [String],
                ifExists: SetHeaderPolicyItemIfExistsEnum? = nil
    ) {
        self.name = name
        self.values = values
        self.ifExists = ifExists
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension SetHeaderPolicyItem: CustomStringConvertible {
    public var description: String { "SetHeaderPolicyItem()" }
}