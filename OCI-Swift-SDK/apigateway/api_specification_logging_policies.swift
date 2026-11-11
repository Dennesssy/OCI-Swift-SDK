import Foundation

// MARK: - ApiSpecificationLoggingPolicies

public struct ApiSpecificationLoggingPolicies: Codable, Sendable {

    public var accessLog: AccessLogPolicy?
    public var executionLog: ExecutionLogPolicy?

    private enum CodingKeys: String, CodingKey {
        case accessLog, executionLog
    }

    public init(
                accessLog: AccessLogPolicy? = nil,
                executionLog: ExecutionLogPolicy? = nil
    ) {
        self.accessLog = accessLog
        self.executionLog = executionLog
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ApiSpecificationLoggingPolicies: CustomStringConvertible {
    public var description: String { "ApiSpecificationLoggingPolicies()" }
}