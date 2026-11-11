import Foundation

// MARK: - GetIotDomainRequest

public struct GetIotDomainRequest: Codable, Sendable {
    public var iotDomainId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case iotDomainId, opcRequestId
    }

    public init(
                iotDomainId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.iotDomainId = iotDomainId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetIotDomainRequest: CustomStringConvertible {
    public var description: String { "GetIotDomainRequest()" }
}

// MARK: - GetIotDomainResponse

public struct GetIotDomainResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var iotDomain: IotDomain?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, iotDomain
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                iotDomain: IotDomain? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.iotDomain = iotDomain
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetIotDomainResponse: CustomStringConvertible {
    public var description: String { "GetIotDomainResponse()" }
}