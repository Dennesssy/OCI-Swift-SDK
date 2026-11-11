import Foundation

// MARK: - SetQueryParameterPolicyItem

public struct SetQueryParameterPolicyItem: Codable, Sendable {

    public var name: String?
    public var values: [String]
    public var ifExists: SetQueryParameterPolicyItemIfExistsEnum?

    private enum CodingKeys: String, CodingKey {
        case name, values, ifExists
    }

    public init(
                name: String? = nil,
                values: [String],
                ifExists: SetQueryParameterPolicyItemIfExistsEnum? = nil
    ) {
        self.name = name
        self.values = values
        self.ifExists = ifExists
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension SetQueryParameterPolicyItem: CustomStringConvertible {
    public var description: String { "SetQueryParameterPolicyItem()" }
}