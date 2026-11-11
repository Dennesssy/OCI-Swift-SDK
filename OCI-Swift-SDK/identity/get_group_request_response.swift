import Foundation

// MARK: - GetGroupRequest

public struct GetGroupRequest: Codable, Sendable {
    public var groupId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case groupId, opcRequestId
    }

    public init(
                groupId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.groupId = groupId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetGroupRequest: CustomStringConvertible {
    public var description: String { "GetGroupRequest()" }
}

// MARK: - GetGroupResponse

public struct GetGroupResponse: Codable, Sendable {
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

extension GetGroupResponse: CustomStringConvertible {
    public var description: String { "GetGroupResponse()" }
}