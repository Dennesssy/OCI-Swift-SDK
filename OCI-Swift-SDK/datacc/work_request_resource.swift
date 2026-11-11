import Foundation

// MARK: - WorkRequestResource

public struct WorkRequestResource: Codable, Sendable {

    public var entityType: String?
    public var actionType: ActionTypeEnum
    public var identifier: String?
    public var entityUri: String?

    private enum CodingKeys: String, CodingKey {
        case entityType, actionType, identifier, entityUri
    }

    public init(
                entityType: String? = nil,
                actionType: ActionTypeEnum,
                identifier: String? = nil,
                entityUri: String? = nil
    ) {
        self.entityType = entityType
        self.actionType = actionType
        self.identifier = identifier
        self.entityUri = entityUri
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension WorkRequestResource: CustomStringConvertible {
    public var description: String { "WorkRequestResource()" }
}