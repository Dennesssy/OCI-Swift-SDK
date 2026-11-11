import Foundation

// MARK: - CreateProvisionedCapacityRequest

public struct CreateProvisionedCapacityRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var createProvisionedCapacityDetails: CreateProvisionedCapacityDetails?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, createProvisionedCapacityDetails
    }

    public init(
                opcRequestId: String? = nil,
                createProvisionedCapacityDetails: CreateProvisionedCapacityDetails? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.createProvisionedCapacityDetails = createProvisionedCapacityDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateProvisionedCapacityRequest: CustomStringConvertible {
    public var description: String { "CreateProvisionedCapacityRequest()" }
}

// MARK: - CreateProvisionedCapacityResponse

public struct CreateProvisionedCapacityResponse: Codable, Sendable {
    public var location: String?
    public var contentLocation: String?
    public var etag: String?
    public var opcWorkRequestId: String?
    public var opcRequestId: String?
    public var provisionedCapacity: ProvisionedCapacity?

    private enum CodingKeys: String, CodingKey {
        case location, contentLocation, etag, opcWorkRequestId, opcRequestId, provisionedCapacity
    }

    public init(
                location: String? = nil,
                contentLocation: String? = nil,
                etag: String? = nil,
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil,
                provisionedCapacity: ProvisionedCapacity? = nil
    ) {
        self.location = location
        self.contentLocation = contentLocation
        self.etag = etag
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
        self.provisionedCapacity = provisionedCapacity
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateProvisionedCapacityResponse: CustomStringConvertible {
    public var description: String { "CreateProvisionedCapacityResponse()" }
}