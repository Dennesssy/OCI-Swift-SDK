import Foundation

// MARK: - SandboxCommandIdentifier

public struct SandboxCommandIdentifier: Codable, Sendable {

    public var id: String?

    private enum CodingKeys: String, CodingKey {
        case id
    }

    public init(
                id: String? = nil
    ) {
        self.id = id
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension SandboxCommandIdentifier: CustomStringConvertible {
    public var description: String { "SandboxCommandIdentifier()" }
}