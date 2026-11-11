import Foundation

// MARK: - DeleteGroupRequest

public struct DeleteGroupRequest: Codable, Sendable {
    public var groupId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case groupId, ifMatch, opcRequestId
    }

    public init(
                groupId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.groupId = groupId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteGroupRequest: CustomStringConvertible {
    public var description: String { "DeleteGroupRequest()" }
}

// MARK: - DeleteGroupResponse

public struct DeleteGroupResponse: Codable, Sendable {
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

extension DeleteGroupResponse: CustomStringConvertible {
    public var description: String { "DeleteGroupResponse()" }
}