import Foundation

// MARK: - GetProvisionedCapacityRequest

public struct GetProvisionedCapacityRequest: Codable, Sendable {
    public var provisionedCapacityId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case provisionedCapacityId, opcRequestId
    }

    public init(
                provisionedCapacityId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.provisionedCapacityId = provisionedCapacityId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetProvisionedCapacityRequest: CustomStringConvertible {
    public var description: String { "GetProvisionedCapacityRequest()" }
}

// MARK: - GetProvisionedCapacityResponse

public struct GetProvisionedCapacityResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var provisionedCapacity: ProvisionedCapacity?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, provisionedCapacity
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                provisionedCapacity: ProvisionedCapacity? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.provisionedCapacity = provisionedCapacity
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetProvisionedCapacityResponse: CustomStringConvertible {
    public var description: String { "GetProvisionedCapacityResponse()" }
}