import Foundation

// MARK: - CreateDynamicGroupRequest

public struct CreateDynamicGroupRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var createDynamicGroupDetails: CreateDynamicGroupDetails?
    public var opcRetryToken: String?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, createDynamicGroupDetails, opcRetryToken
    }

    public init(
                opcRequestId: String? = nil,
                createDynamicGroupDetails: CreateDynamicGroupDetails? = nil,
                opcRetryToken: String? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.createDynamicGroupDetails = createDynamicGroupDetails
        self.opcRetryToken = opcRetryToken
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateDynamicGroupRequest: CustomStringConvertible {
    public var description: String { "CreateDynamicGroupRequest()" }
}

// MARK: - CreateDynamicGroupResponse

public struct CreateDynamicGroupResponse: Codable, Sendable {
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

extension CreateDynamicGroupResponse: CustomStringConvertible {
    public var description: String { "CreateDynamicGroupResponse()" }
}