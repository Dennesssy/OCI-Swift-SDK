import Foundation

// MARK: - QueryResultWarning

public struct QueryResultWarning: Codable, Sendable {

    public var message: String?

    private enum CodingKeys: String, CodingKey {
        case message
    }

    public init(
                message: String? = nil
    ) {
        self.message = message
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension QueryResultWarning: CustomStringConvertible {
    public var description: String { "QueryResultWarning()" }
}