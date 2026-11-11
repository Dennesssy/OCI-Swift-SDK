import Foundation

// MARK: - IamWorkRequestErrorSummary

public struct IamWorkRequestErrorSummary: Codable, Sendable {

    public var code: String?
    public var message: String?
    public var timestamp: Date?

    private enum CodingKeys: String, CodingKey {
        case code, message, timestamp
    }

    public init(
                code: String? = nil,
                message: String? = nil,
                timestamp: Date? = nil
    ) {
        self.code = code
        self.message = message
        self.timestamp = timestamp
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension IamWorkRequestErrorSummary: CustomStringConvertible {
    public var description: String { "IamWorkRequestErrorSummary()" }
}