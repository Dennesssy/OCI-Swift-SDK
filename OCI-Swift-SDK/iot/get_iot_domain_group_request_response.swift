import Foundation

// MARK: - GetIotDomainGroupRequest

public struct GetIotDomainGroupRequest: Codable, Sendable {
    public var iotDomainGroupId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case iotDomainGroupId, opcRequestId
    }

    public init(
                iotDomainGroupId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.iotDomainGroupId = iotDomainGroupId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetIotDomainGroupRequest: CustomStringConvertible {
    public var description: String { "GetIotDomainGroupRequest()" }
}

// MARK: - GetIotDomainGroupResponse

public struct GetIotDomainGroupResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var iotDomainGroup: IotDomainGroup?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, iotDomainGroup
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                iotDomainGroup: IotDomainGroup? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.iotDomainGroup = iotDomainGroup
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetIotDomainGroupResponse: CustomStringConvertible {
    public var description: String { "GetIotDomainGroupResponse()" }
}