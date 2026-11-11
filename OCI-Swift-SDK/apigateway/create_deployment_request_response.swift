import Foundation

// MARK: - CreateDeploymentRequest

public struct CreateDeploymentRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var createDeploymentDetails: CreateDeploymentDetails?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, createDeploymentDetails
    }

    public init(
                opcRequestId: String? = nil,
                createDeploymentDetails: CreateDeploymentDetails? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.createDeploymentDetails = createDeploymentDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateDeploymentRequest: CustomStringConvertible {
    public var description: String { "CreateDeploymentRequest()" }
}

// MARK: - CreateDeploymentResponse

public struct CreateDeploymentResponse: Codable, Sendable {
    public var etag: String?
    public var opcWorkRequestId: String?
    public var opcRequestId: String?
    public var location: String?
    public var deployment: Deployment?

    private enum CodingKeys: String, CodingKey {
        case etag, opcWorkRequestId, opcRequestId, location, deployment
    }

    public init(
                etag: String? = nil,
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil,
                location: String? = nil,
                deployment: Deployment? = nil
    ) {
        self.etag = etag
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
        self.location = location
        self.deployment = deployment
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateDeploymentResponse: CustomStringConvertible {
    public var description: String { "CreateDeploymentResponse()" }
}