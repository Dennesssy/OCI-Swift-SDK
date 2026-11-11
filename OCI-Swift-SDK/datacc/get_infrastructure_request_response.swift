import Foundation

// MARK: - GetInfrastructureRequest

public struct GetInfrastructureRequest: Codable, Sendable {
    public var infrastructureId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case infrastructureId, opcRequestId
    }

    public init(
                infrastructureId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.infrastructureId = infrastructureId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetInfrastructureRequest: CustomStringConvertible {
    public var description: String { "GetInfrastructureRequest()" }
}

// MARK: - GetInfrastructureResponse

public struct GetInfrastructureResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var etag: String?
    public var location: String?
    public var infrastructure: Infrastructure?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, etag, location, infrastructure
    }

    public init(
                opcRequestId: String? = nil,
                etag: String? = nil,
                location: String? = nil,
                infrastructure: Infrastructure? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.etag = etag
        self.location = location
        self.infrastructure = infrastructure
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetInfrastructureResponse: CustomStringConvertible {
    public var description: String { "GetInfrastructureResponse()" }
}