import Foundation

// MARK: - AddUserToGroupDetails

public struct AddUserToGroupDetails: Codable, Sendable {

    public var userId: String?
    public var groupId: String?

    private enum CodingKeys: String, CodingKey {
        case userId, groupId
    }

    public init(
                userId: String? = nil,
                groupId: String? = nil
    ) {
        self.userId = userId
        self.groupId = groupId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension AddUserToGroupDetails: CustomStringConvertible {
    public var description: String { "AddUserToGroupDetails()" }
}