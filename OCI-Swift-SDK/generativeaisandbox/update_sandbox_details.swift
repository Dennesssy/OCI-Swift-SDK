import Foundation

// MARK: - UpdateSandboxDetails

public struct UpdateSandboxDetails: Codable, Sendable {

    public var displayName: String?

    private enum CodingKeys: String, CodingKey {
        case displayName
    }

    public init(
                displayName: String? = nil
    ) {
        self.displayName = displayName
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateSandboxDetails: CustomStringConvertible {
    public var description: String { "UpdateSandboxDetails()" }
}