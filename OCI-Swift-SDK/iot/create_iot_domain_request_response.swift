import Foundation

// MARK: - CreateIotDomainRequest

public struct CreateIotDomainRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var createIotDomainDetails: CreateIotDomainDetails?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, createIotDomainDetails
    }

    public init(
                opcRequestId: String? = nil,
                createIotDomainDetails: CreateIotDomainDetails? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.createIotDomainDetails = createIotDomainDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateIotDomainRequest: CustomStringConvertible {
    public var description: String { "CreateIotDomainRequest()" }
}

// MARK: - CreateIotDomainResponse

public struct CreateIotDomainResponse: Codable, Sendable {
    public var location: String?
    public var contentLocation: String?
    public var etag: String?
    public var opcWorkRequestId: String?
    public var opcRequestId: String?
    public var iotDomain: IotDomain?

    private enum CodingKeys: String, CodingKey {
        case location, contentLocation, etag, opcWorkRequestId, opcRequestId, iotDomain
    }

    public init(
                location: String? = nil,
                contentLocation: String? = nil,
                etag: String? = nil,
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil,
                iotDomain: IotDomain? = nil
    ) {
        self.location = location
        self.contentLocation = contentLocation
        self.etag = etag
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
        self.iotDomain = iotDomain
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateIotDomainResponse: CustomStringConvertible {
    public var description: String { "CreateIotDomainResponse()" }
}