import Foundation

// MARK: - performedaction

public struct performedaction: Codable, Sendable {

    public var jsonData: Data?
    public var actionId: String?
    public var performedActionType: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, actionId, performedActionType
    }

    public init(
                jsonData: Data? = nil,
                actionId: String? = nil,
                performedActionType: String? = nil
    ) {
        self.jsonData = jsonData
        self.actionId = actionId
        self.performedActionType = performedActionType
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension performedaction: CustomStringConvertible {
    public var description: String { "performedaction()" }
}