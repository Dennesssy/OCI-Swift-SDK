import Foundation

// MARK: - OciLoggingConfiguration

public struct OciLoggingConfiguration: Codable, Sendable {

    public var logGroupId: String?
    public var logId: String?
    public var isJobTaskEventsPropagationEnabled: Bool?

    private enum CodingKeys: String, CodingKey {
        case logGroupId, logId, isJobTaskEventsPropagationEnabled
    }

    public init(
                logGroupId: String? = nil,
                logId: String? = nil,
                isJobTaskEventsPropagationEnabled: Bool? = nil
    ) {
        self.logGroupId = logGroupId
        self.logId = logId
        self.isJobTaskEventsPropagationEnabled = isJobTaskEventsPropagationEnabled
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension OciLoggingConfiguration: CustomStringConvertible {
    public var description: String { "OciLoggingConfiguration()" }
}