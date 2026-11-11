import Foundation

// MARK: - requiredaction

public struct requiredaction: Codable, Sendable {

    public var jsonData: Data?
    public var actionId: String?
    public var requiredActionType: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, actionId, requiredActionType
    }

    public init(
                jsonData: Data? = nil,
                actionId: String? = nil,
                requiredActionType: String? = nil
    ) {
        self.jsonData = jsonData
        self.actionId = actionId
        self.requiredActionType = requiredActionType
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension requiredaction: CustomStringConvertible {
    public var description: String { "requiredaction()" }
}