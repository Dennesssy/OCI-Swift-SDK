import Foundation

// MARK: - CreateInfrastructureRequest

public struct CreateInfrastructureRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var createInfrastructureDetails: CreateInfrastructureDetails?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, createInfrastructureDetails
    }

    public init(
                opcRequestId: String? = nil,
                createInfrastructureDetails: CreateInfrastructureDetails? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.createInfrastructureDetails = createInfrastructureDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateInfrastructureRequest: CustomStringConvertible {
    public var description: String { "CreateInfrastructureRequest()" }
}

// MARK: - CreateInfrastructureResponse

public struct CreateInfrastructureResponse: Codable, Sendable {
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

extension CreateInfrastructureResponse: CustomStringConvertible {
    public var description: String { "CreateInfrastructureResponse()" }
}