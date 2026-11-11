import Foundation

// MARK: - DeleteIotDomainGroupRequest

public struct DeleteIotDomainGroupRequest: Codable, Sendable {
    public var iotDomainGroupId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case iotDomainGroupId, ifMatch, opcRequestId
    }

    public init(
                iotDomainGroupId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.iotDomainGroupId = iotDomainGroupId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteIotDomainGroupRequest: CustomStringConvertible {
    public var description: String { "DeleteIotDomainGroupRequest()" }
}

// MARK: - DeleteIotDomainGroupResponse

public struct DeleteIotDomainGroupResponse: Codable, Sendable {
    public var opcWorkRequestId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case opcWorkRequestId, opcRequestId
    }

    public init(
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteIotDomainGroupResponse: CustomStringConvertible {
    public var description: String { "DeleteIotDomainGroupResponse()" }
}