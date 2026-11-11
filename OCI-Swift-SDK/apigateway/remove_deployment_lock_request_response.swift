import Foundation

// MARK: - RemoveDeploymentLockRequest

public struct RemoveDeploymentLockRequest: Codable, Sendable {
    public var deploymentId: String?
    public var opcRequestId: String?
    public var ifMatch: String?
    public var removeResourceLockDetails: RemoveResourceLockDetails?

    private enum CodingKeys: String, CodingKey {
        case deploymentId, opcRequestId, ifMatch, removeResourceLockDetails
    }

    public init(
                deploymentId: String? = nil,
                opcRequestId: String? = nil,
                ifMatch: String? = nil,
                removeResourceLockDetails: RemoveResourceLockDetails? = nil
    ) {
        self.deploymentId = deploymentId
        self.opcRequestId = opcRequestId
        self.ifMatch = ifMatch
        self.removeResourceLockDetails = removeResourceLockDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RemoveDeploymentLockRequest: CustomStringConvertible {
    public var description: String { "RemoveDeploymentLockRequest()" }
}

// MARK: - RemoveDeploymentLockResponse

public struct RemoveDeploymentLockResponse: Codable, Sendable {
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

extension RemoveDeploymentLockResponse: CustomStringConvertible {
    public var description: String { "RemoveDeploymentLockResponse()" }
}