import Foundation

// MARK: - IamWorkRequestResource

public struct IamWorkRequestResource: Codable, Sendable {

    public var actionType: IamWorkRequestResourceActionTypeEnum
    public var entityType: String?
    public var identifier: String?
    public var entityUri: String?

    private enum CodingKeys: String, CodingKey {
        case actionType, entityType, identifier, entityUri
    }

    public init(
                actionType: IamWorkRequestResourceActionTypeEnum,
                entityType: String? = nil,
                identifier: String? = nil,
                entityUri: String? = nil
    ) {
        self.actionType = actionType
        self.entityType = entityType
        self.identifier = identifier
        self.entityUri = entityUri
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension IamWorkRequestResource: CustomStringConvertible {
    public var description: String { "IamWorkRequestResource()" }
}