import Foundation

// MARK: - SessionConfig

public struct SessionConfig: Codable, Sendable {

    public var idleTimeoutInSeconds: Int?

    private enum CodingKeys: String, CodingKey {
        case idleTimeoutInSeconds
    }

    public init(
                idleTimeoutInSeconds: Int? = nil
    ) {
        self.idleTimeoutInSeconds = idleTimeoutInSeconds
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension SessionConfig: CustomStringConvertible {
    public var description: String { "SessionConfig()" }
}