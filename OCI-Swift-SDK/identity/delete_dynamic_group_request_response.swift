import Foundation

// MARK: - DeleteDynamicGroupRequest

public struct DeleteDynamicGroupRequest: Codable, Sendable {
    public var dynamicGroupId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case dynamicGroupId, ifMatch, opcRequestId
    }

    public init(
                dynamicGroupId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.dynamicGroupId = dynamicGroupId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteDynamicGroupRequest: CustomStringConvertible {
    public var description: String { "DeleteDynamicGroupRequest()" }
}

// MARK: - DeleteDynamicGroupResponse

public struct DeleteDynamicGroupResponse: Codable, Sendable {
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId
    }

    public init(
                opcRequestId: String? = nil
    ) {
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteDynamicGroupResponse: CustomStringConvertible {
    public var description: String { "DeleteDynamicGroupResponse()" }
}