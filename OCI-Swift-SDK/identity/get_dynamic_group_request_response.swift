import Foundation

// MARK: - GetDynamicGroupRequest

public struct GetDynamicGroupRequest: Codable, Sendable {
    public var dynamicGroupId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case dynamicGroupId, opcRequestId
    }

    public init(
                dynamicGroupId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.dynamicGroupId = dynamicGroupId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetDynamicGroupRequest: CustomStringConvertible {
    public var description: String { "GetDynamicGroupRequest()" }
}

// MARK: - GetDynamicGroupResponse

public struct GetDynamicGroupResponse: Codable, Sendable {
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

extension GetDynamicGroupResponse: CustomStringConvertible {
    public var description: String { "GetDynamicGroupResponse()" }
}