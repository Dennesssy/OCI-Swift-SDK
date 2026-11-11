import Foundation

// MARK: - ConfigureIotDomainGroupDataAccessRequest

public struct ConfigureIotDomainGroupDataAccessRequest: Codable, Sendable {
    public var iotDomainGroupId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var configureIotDomainGroupDataAccessDetails: ConfigureIotDomainGroupDataAccessDetails?

    private enum CodingKeys: String, CodingKey {
        case iotDomainGroupId, ifMatch, opcRequestId, configureIotDomainGroupDataAccessDetails
    }

    public init(
                iotDomainGroupId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                configureIotDomainGroupDataAccessDetails: ConfigureIotDomainGroupDataAccessDetails? = nil
    ) {
        self.iotDomainGroupId = iotDomainGroupId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.configureIotDomainGroupDataAccessDetails = configureIotDomainGroupDataAccessDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ConfigureIotDomainGroupDataAccessRequest: CustomStringConvertible {
    public var description: String { "ConfigureIotDomainGroupDataAccessRequest()" }
}

// MARK: - ConfigureIotDomainGroupDataAccessResponse

public struct ConfigureIotDomainGroupDataAccessResponse: Codable, Sendable {
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

extension ConfigureIotDomainGroupDataAccessResponse: CustomStringConvertible {
    public var description: String { "ConfigureIotDomainGroupDataAccessResponse()" }
}