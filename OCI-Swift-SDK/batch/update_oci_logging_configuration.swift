import Foundation

// MARK: - UpdateOciLoggingConfiguration

public struct UpdateOciLoggingConfiguration: Codable, Sendable {

    public var isJobTaskEventsPropagationEnabled: Bool?

    private enum CodingKeys: String, CodingKey {
        case isJobTaskEventsPropagationEnabled
    }

    public init(
                isJobTaskEventsPropagationEnabled: Bool? = nil
    ) {
        self.isJobTaskEventsPropagationEnabled = isJobTaskEventsPropagationEnabled
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateOciLoggingConfiguration: CustomStringConvertible {
    public var description: String { "UpdateOciLoggingConfiguration()" }
}