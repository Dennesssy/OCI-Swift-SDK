import Foundation

// MARK: - CreateIdpGroupMappingDetails

public struct CreateIdpGroupMappingDetails: Codable, Sendable {

    public var idpGroupName: String?
    public var groupId: String?

    private enum CodingKeys: String, CodingKey {
        case idpGroupName, groupId
    }

    public init(
                idpGroupName: String? = nil,
                groupId: String? = nil
    ) {
        self.idpGroupName = idpGroupName
        self.groupId = groupId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateIdpGroupMappingDetails: CustomStringConvertible {
    public var description: String { "CreateIdpGroupMappingDetails()" }
}