import Foundation

// MARK: - ExecutionLogPolicy

public struct ExecutionLogPolicy: Codable, Sendable {

    public var isEnabled: Bool?
    public var logLevel: ExecutionLogPolicyLogLevelEnum?

    private enum CodingKeys: String, CodingKey {
        case isEnabled, logLevel
    }

    public init(
                isEnabled: Bool? = nil,
                logLevel: ExecutionLogPolicyLogLevelEnum? = nil
    ) {
        self.isEnabled = isEnabled
        self.logLevel = logLevel
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ExecutionLogPolicy: CustomStringConvertible {
    public var description: String { "ExecutionLogPolicy()" }
}