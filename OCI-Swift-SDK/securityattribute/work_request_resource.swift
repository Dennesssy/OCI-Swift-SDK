import Foundation

// MARK: - WorkRequestResource

public struct WorkRequestResource: Codable, Sendable {

    public var identifier: String?
    public var entityType: String?
    public var actionType: WorkRequestResourceActionTypeEnum
    public var entityUri: String?

    private enum CodingKeys: String, CodingKey {
        case identifier, entityType, actionType, entityUri
    }

    public init(
                identifier: String? = nil,
                entityType: String? = nil,
                actionType: WorkRequestResourceActionTypeEnum,
                entityUri: String? = nil
    ) {
        self.identifier = identifier
        self.entityType = entityType
        self.actionType = actionType
        self.entityUri = entityUri
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension WorkRequestResource: CustomStringConvertible {
    public var description: String { "WorkRequestResource()" }
}