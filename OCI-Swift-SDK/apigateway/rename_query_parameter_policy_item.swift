import Foundation

// MARK: - RenameQueryParameterPolicyItem

public struct RenameQueryParameterPolicyItem: Codable, Sendable {

    public var from: String?
    public var to: String?

    private enum CodingKeys: String, CodingKey {
        case from, to
    }

    public init(
                from: String? = nil,
                to: String? = nil
    ) {
        self.from = from
        self.to = to
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RenameQueryParameterPolicyItem: CustomStringConvertible {
    public var description: String { "RenameQueryParameterPolicyItem()" }
}