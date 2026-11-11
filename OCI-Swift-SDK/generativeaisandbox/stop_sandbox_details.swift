import Foundation

// MARK: - StopSandboxDetails

public struct StopSandboxDetails: Codable, Sendable {

    public var isForce: Bool?

    private enum CodingKeys: String, CodingKey {
        case isForce
    }

    public init(
                isForce: Bool? = nil
    ) {
        self.isForce = isForce
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension StopSandboxDetails: CustomStringConvertible {
    public var description: String { "StopSandboxDetails()" }
}