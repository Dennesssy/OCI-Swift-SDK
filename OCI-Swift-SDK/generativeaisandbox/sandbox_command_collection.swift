import Foundation

// MARK: - SandboxCommandCollection

public struct SandboxCommandCollection: Codable, Sendable {

    public var items: [SandboxCommandSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [SandboxCommandSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension SandboxCommandCollection: CustomStringConvertible {
    public var description: String { "SandboxCommandCollection()" }
}