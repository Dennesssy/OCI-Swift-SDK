import Foundation

// MARK: - WorkRequestLogCollection

public struct WorkRequestLogCollection: Codable, Sendable {

    public var items: [WorkRequestLog]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [WorkRequestLog]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension WorkRequestLogCollection: CustomStringConvertible {
    public var description: String { "WorkRequestLogCollection()" }
}