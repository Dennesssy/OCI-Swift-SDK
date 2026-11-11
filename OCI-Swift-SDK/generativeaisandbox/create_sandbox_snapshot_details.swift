import Foundation

// MARK: - CreateSandboxSnapshotDetails

public struct CreateSandboxSnapshotDetails: Codable, Sendable {

    public var sandboxId: String?
    public var expirationDuration: String?

    private enum CodingKeys: String, CodingKey {
        case sandboxId, expirationDuration
    }

    public init(
                sandboxId: String? = nil,
                expirationDuration: String? = nil
    ) {
        self.sandboxId = sandboxId
        self.expirationDuration = expirationDuration
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateSandboxSnapshotDetails: CustomStringConvertible {
    public var description: String { "CreateSandboxSnapshotDetails()" }
}