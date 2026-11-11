import Foundation

// MARK: - UpdateIotDomainGroupRequest

public struct UpdateIotDomainGroupRequest: Codable, Sendable {
    public var iotDomainGroupId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateIotDomainGroupDetails: UpdateIotDomainGroupDetails?

    private enum CodingKeys: String, CodingKey {
        case iotDomainGroupId, ifMatch, opcRequestId, updateIotDomainGroupDetails
    }

    public init(
                iotDomainGroupId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateIotDomainGroupDetails: UpdateIotDomainGroupDetails? = nil
    ) {
        self.iotDomainGroupId = iotDomainGroupId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateIotDomainGroupDetails = updateIotDomainGroupDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateIotDomainGroupRequest: CustomStringConvertible {
    public var description: String { "UpdateIotDomainGroupRequest()" }
}

// MARK: - UpdateIotDomainGroupResponse

public struct UpdateIotDomainGroupResponse: Codable, Sendable {
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

extension UpdateIotDomainGroupResponse: CustomStringConvertible {
    public var description: String { "UpdateIotDomainGroupResponse()" }
}