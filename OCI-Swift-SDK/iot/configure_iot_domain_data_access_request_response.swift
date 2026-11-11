import Foundation
import OCICommon

// MARK: - ConfigureIotDomainDataAccessRequest

public struct ConfigureIotDomainDataAccessRequest: Codable, Sendable {
    public var iotDomainId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var configureIotDomainDataAccessDetails: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case iotDomainId, ifMatch, opcRequestId, configureIotDomainDataAccessDetails
    }

    public init(
                iotDomainId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                configureIotDomainDataAccessDetails: JSONValue? = nil
    ) {
        self.iotDomainId = iotDomainId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.configureIotDomainDataAccessDetails = configureIotDomainDataAccessDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ConfigureIotDomainDataAccessRequest: CustomStringConvertible {
    public var description: String { "ConfigureIotDomainDataAccessRequest()" }
}

// MARK: - ConfigureIotDomainDataAccessResponse

public struct ConfigureIotDomainDataAccessResponse: Codable, Sendable {
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

extension ConfigureIotDomainDataAccessResponse: CustomStringConvertible {
    public var description: String { "ConfigureIotDomainDataAccessResponse()" }
}