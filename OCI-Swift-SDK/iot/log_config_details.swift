import Foundation

// MARK: - LogConfigDetails

public struct LogConfigDetails: Codable, Sendable {

    public var logGroupId: String?
    public var logId: String?

    private enum CodingKeys: String, CodingKey {
        case logGroupId, logId
    }

    public init(
                logGroupId: String? = nil,
                logId: String? = nil
    ) {
        self.logGroupId = logGroupId
        self.logId = logId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension LogConfigDetails: CustomStringConvertible {
    public var description: String { "LogConfigDetails()" }
}