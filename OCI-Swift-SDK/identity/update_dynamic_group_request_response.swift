import Foundation

// MARK: - UpdateDynamicGroupRequest

public struct UpdateDynamicGroupRequest: Codable, Sendable {
    public var dynamicGroupId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateDynamicGroupDetails: UpdateDynamicGroupDetails?

    private enum CodingKeys: String, CodingKey {
        case dynamicGroupId, ifMatch, opcRequestId, updateDynamicGroupDetails
    }

    public init(
                dynamicGroupId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateDynamicGroupDetails: UpdateDynamicGroupDetails? = nil
    ) {
        self.dynamicGroupId = dynamicGroupId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateDynamicGroupDetails = updateDynamicGroupDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateDynamicGroupRequest: CustomStringConvertible {
    public var description: String { "UpdateDynamicGroupRequest()" }
}

// MARK: - UpdateDynamicGroupResponse

public struct UpdateDynamicGroupResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var etag: String?
    public var dynamicGroup: DynamicGroup?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, etag, dynamicGroup
    }

    public init(
                opcRequestId: String? = nil,
                etag: String? = nil,
                dynamicGroup: DynamicGroup? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.etag = etag
        self.dynamicGroup = dynamicGroup
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateDynamicGroupResponse: CustomStringConvertible {
    public var description: String { "UpdateDynamicGroupResponse()" }
}