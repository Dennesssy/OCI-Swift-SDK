import Foundation

// MARK: - UpdateGroupRequest

public struct UpdateGroupRequest: Codable, Sendable {
    public var groupId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateGroupDetails: UpdateGroupDetails?

    private enum CodingKeys: String, CodingKey {
        case groupId, ifMatch, opcRequestId, updateGroupDetails
    }

    public init(
                groupId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateGroupDetails: UpdateGroupDetails? = nil
    ) {
        self.groupId = groupId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateGroupDetails = updateGroupDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateGroupRequest: CustomStringConvertible {
    public var description: String { "UpdateGroupRequest()" }
}

// MARK: - UpdateGroupResponse

public struct UpdateGroupResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var etag: String?
    public var group: Group?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, etag, group
    }

    public init(
                opcRequestId: String? = nil,
                etag: String? = nil,
                group: Group? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.etag = etag
        self.group = group
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateGroupResponse: CustomStringConvertible {
    public var description: String { "UpdateGroupResponse()" }
}