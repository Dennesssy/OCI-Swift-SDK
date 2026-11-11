import Foundation

// MARK: - DateAndTime

public struct DateAndTime: Codable, Sendable {

    public var date: String?
    public var time: String?

    private enum CodingKeys: String, CodingKey {
        case date, time
    }

    public init(
                date: String? = nil,
                time: String? = nil
    ) {
        self.date = date
        self.time = time
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DateAndTime: CustomStringConvertible {
    public var description: String { "DateAndTime()" }
}