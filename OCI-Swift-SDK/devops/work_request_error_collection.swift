import Foundation

// MARK: - WorkRequestErrorCollection

public struct WorkRequestErrorCollection: Codable, Sendable {

    public var items: [WorkRequestError]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [WorkRequestError]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension WorkRequestErrorCollection: CustomStringConvertible {
    public var description: String { "WorkRequestErrorCollection()" }
}