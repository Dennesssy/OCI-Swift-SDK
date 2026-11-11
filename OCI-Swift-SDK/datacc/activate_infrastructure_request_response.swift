import Foundation

// MARK: - ActivateInfrastructureRequest

public struct ActivateInfrastructureRequest: Codable, Sendable {
    public var infrastructureId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var activateInfrastructureDetails: ActivateInfrastructureDetails?

    private enum CodingKeys: String, CodingKey {
        case infrastructureId, ifMatch, opcRequestId, activateInfrastructureDetails
    }

    public init(
                infrastructureId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                activateInfrastructureDetails: ActivateInfrastructureDetails? = nil
    ) {
        self.infrastructureId = infrastructureId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.activateInfrastructureDetails = activateInfrastructureDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ActivateInfrastructureRequest: CustomStringConvertible {
    public var description: String { "ActivateInfrastructureRequest()" }
}

// MARK: - ActivateInfrastructureResponse

public struct ActivateInfrastructureResponse: Codable, Sendable {
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

extension ActivateInfrastructureResponse: CustomStringConvertible {
    public var description: String { "ActivateInfrastructureResponse()" }
}