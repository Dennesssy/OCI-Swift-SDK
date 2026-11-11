import Foundation

// MARK: - BatchTaskProfileCollection

public struct BatchTaskProfileCollection: Codable, Sendable {

    public var items: [BatchTaskProfileSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [BatchTaskProfileSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BatchTaskProfileCollection: CustomStringConvertible {
    public var description: String { "BatchTaskProfileCollection()" }
}