import Foundation
import OCICommon

// MARK: - MergeCheckCollection

public struct MergeCheckCollection: Codable, Sendable {

    public var items: [JSONValue]?
    public var timeValidated: Date?

    private enum CodingKeys: String, CodingKey {
        case items, timeValidated
    }

    public init(
                items: [JSONValue]? = nil,
                timeValidated: Date? = nil
    ) {
        self.items = items
        self.timeValidated = timeValidated
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension MergeCheckCollection: CustomStringConvertible {
    public var description: String { "MergeCheckCollection()" }
}