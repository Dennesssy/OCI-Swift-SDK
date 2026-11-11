import Foundation

// MARK: - IamWorkRequestLogSummary

public struct IamWorkRequestLogSummary: Codable, Sendable {

    public var message: String?
    public var timestamp: Date?

    private enum CodingKeys: String, CodingKey {
        case message, timestamp
    }

    public init(
                message: String? = nil,
                timestamp: Date? = nil
    ) {
        self.message = message
        self.timestamp = timestamp
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension IamWorkRequestLogSummary: CustomStringConvertible {
    public var description: String { "IamWorkRequestLogSummary()" }
}