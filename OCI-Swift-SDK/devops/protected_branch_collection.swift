import Foundation

// MARK: - ProtectedBranchCollection

public struct ProtectedBranchCollection: Codable, Sendable {

    public var items: [ProtectedBranchSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [ProtectedBranchSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ProtectedBranchCollection: CustomStringConvertible {
    public var description: String { "ProtectedBranchCollection()" }
}