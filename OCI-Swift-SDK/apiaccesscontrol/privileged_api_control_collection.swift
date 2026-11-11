import Foundation

// MARK: - PrivilegedApiControlCollection

public struct PrivilegedApiControlCollection: Codable, Sendable {

    public var items: [PrivilegedApiControlSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [PrivilegedApiControlSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension PrivilegedApiControlCollection: CustomStringConvertible {
    public var description: String { "PrivilegedApiControlCollection()" }
}