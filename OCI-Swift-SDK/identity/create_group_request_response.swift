import Foundation

// MARK: - CreateGroupRequest

public struct CreateGroupRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var createGroupDetails: CreateGroupDetails?
    public var opcRetryToken: String?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, createGroupDetails, opcRetryToken
    }

    public init(
                opcRequestId: String? = nil,
                createGroupDetails: CreateGroupDetails? = nil,
                opcRetryToken: String? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.createGroupDetails = createGroupDetails
        self.opcRetryToken = opcRetryToken
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateGroupRequest: CustomStringConvertible {
    public var description: String { "CreateGroupRequest()" }
}

// MARK: - CreateGroupResponse

public struct CreateGroupResponse: Codable, Sendable {
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

extension CreateGroupResponse: CustomStringConvertible {
    public var description: String { "CreateGroupResponse()" }
}