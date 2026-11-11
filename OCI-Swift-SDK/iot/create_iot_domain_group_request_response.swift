import Foundation

// MARK: - CreateIotDomainGroupRequest

public struct CreateIotDomainGroupRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var createIotDomainGroupDetails: CreateIotDomainGroupDetails?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, createIotDomainGroupDetails
    }

    public init(
                opcRequestId: String? = nil,
                createIotDomainGroupDetails: CreateIotDomainGroupDetails? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.createIotDomainGroupDetails = createIotDomainGroupDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateIotDomainGroupRequest: CustomStringConvertible {
    public var description: String { "CreateIotDomainGroupRequest()" }
}

// MARK: - CreateIotDomainGroupResponse

public struct CreateIotDomainGroupResponse: Codable, Sendable {
    public var location: String?
    public var contentLocation: String?
    public var etag: String?
    public var opcWorkRequestId: String?
    public var opcRequestId: String?
    public var iotDomainGroup: IotDomainGroup?

    private enum CodingKeys: String, CodingKey {
        case location, contentLocation, etag, opcWorkRequestId, opcRequestId, iotDomainGroup
    }

    public init(
                location: String? = nil,
                contentLocation: String? = nil,
                etag: String? = nil,
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil,
                iotDomainGroup: IotDomainGroup? = nil
    ) {
        self.location = location
        self.contentLocation = contentLocation
        self.etag = etag
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
        self.iotDomainGroup = iotDomainGroup
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateIotDomainGroupResponse: CustomStringConvertible {
    public var description: String { "CreateIotDomainGroupResponse()" }
}