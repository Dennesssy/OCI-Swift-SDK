import Foundation
import OCICommon

// MARK: - TriggerInfo

public struct TriggerInfo: Codable, Sendable {

    public var actions: [JSONValue]
    public var displayName: String?

    private enum CodingKeys: String, CodingKey {
        case actions, displayName
    }

    public init(
                actions: [JSONValue],
                displayName: String? = nil
    ) {
        self.actions = actions
        self.displayName = displayName
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension TriggerInfo: CustomStringConvertible {
    public var description: String { "TriggerInfo()" }
}