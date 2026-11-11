import Foundation

// MARK: - AddDeploymentLockRequest

public struct AddDeploymentLockRequest: Codable, Sendable {
    public var deploymentId: String?
    public var opcRequestId: String?
    public var ifMatch: String?
    public var addResourceLockDetails: AddResourceLockDetails?

    private enum CodingKeys: String, CodingKey {
        case deploymentId, opcRequestId, ifMatch, addResourceLockDetails
    }

    public init(
                deploymentId: String? = nil,
                opcRequestId: String? = nil,
                ifMatch: String? = nil,
                addResourceLockDetails: AddResourceLockDetails? = nil
    ) {
        self.deploymentId = deploymentId
        self.opcRequestId = opcRequestId
        self.ifMatch = ifMatch
        self.addResourceLockDetails = addResourceLockDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension AddDeploymentLockRequest: CustomStringConvertible {
    public var description: String { "AddDeploymentLockRequest()" }
}

// MARK: - AddDeploymentLockResponse

public struct AddDeploymentLockResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var etag: String?
    public var deployment: Deployment?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, etag, deployment
    }

    public init(
                opcRequestId: String? = nil,
                etag: String? = nil,
                deployment: Deployment? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.etag = etag
        self.deployment = deployment
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension AddDeploymentLockResponse: CustomStringConvertible {
    public var description: String { "AddDeploymentLockResponse()" }
}