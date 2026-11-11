import Foundation

// MARK: - SandboxCollection

public struct SandboxCollection: Codable, Sendable {

    public var items: [SandboxSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [SandboxSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension SandboxCollection: CustomStringConvertible {
    public var description: String { "SandboxCollection()" }
}