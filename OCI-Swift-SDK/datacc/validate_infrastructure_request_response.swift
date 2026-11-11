import Foundation

// MARK: - ValidateInfrastructureRequest

public struct ValidateInfrastructureRequest: Codable, Sendable {
    public var infrastructureId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var validateInfrastructureDetails: ValidateInfrastructureDetails?

    private enum CodingKeys: String, CodingKey {
        case infrastructureId, ifMatch, opcRequestId, validateInfrastructureDetails
    }

    public init(
                infrastructureId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                validateInfrastructureDetails: ValidateInfrastructureDetails? = nil
    ) {
        self.infrastructureId = infrastructureId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.validateInfrastructureDetails = validateInfrastructureDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ValidateInfrastructureRequest: CustomStringConvertible {
    public var description: String { "ValidateInfrastructureRequest()" }
}

// MARK: - ValidateInfrastructureResponse

public struct ValidateInfrastructureResponse: Codable, Sendable {
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

extension ValidateInfrastructureResponse: CustomStringConvertible {
    public var description: String { "ValidateInfrastructureResponse()" }
}