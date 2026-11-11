import Foundation

// MARK: - UpdateInfrastructureRequest

public struct UpdateInfrastructureRequest: Codable, Sendable {
    public var infrastructureId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateInfrastructureDetails: UpdateInfrastructureDetails?

    private enum CodingKeys: String, CodingKey {
        case infrastructureId, ifMatch, opcRequestId, updateInfrastructureDetails
    }

    public init(
                infrastructureId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateInfrastructureDetails: UpdateInfrastructureDetails? = nil
    ) {
        self.infrastructureId = infrastructureId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateInfrastructureDetails = updateInfrastructureDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateInfrastructureRequest: CustomStringConvertible {
    public var description: String { "UpdateInfrastructureRequest()" }
}

// MARK: - UpdateInfrastructureResponse

public struct UpdateInfrastructureResponse: Codable, Sendable {
    public var opcWorkRequestId: String?
    public var opcRequestId: String?
    public var etag: String?
    public var location: String?
    public var infrastructure: Infrastructure?

    private enum CodingKeys: String, CodingKey {
        case opcWorkRequestId, opcRequestId, etag, location, infrastructure
    }

    public init(
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil,
                etag: String? = nil,
                location: String? = nil,
                infrastructure: Infrastructure? = nil
    ) {
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
        self.etag = etag
        self.location = location
        self.infrastructure = infrastructure
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateInfrastructureResponse: CustomStringConvertible {
    public var description: String { "UpdateInfrastructureResponse()" }
}