import Foundation
import OCICommon

// MARK: - UpdateDeploymentRequest

public struct UpdateDeploymentRequest: Codable, Sendable {
    public var deploymentId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateDeploymentDetails: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case deploymentId, ifMatch, opcRequestId, updateDeploymentDetails
    }

    public init(
                deploymentId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateDeploymentDetails: JSONValue? = nil
    ) {
        self.deploymentId = deploymentId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateDeploymentDetails = updateDeploymentDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateDeploymentRequest: CustomStringConvertible {
    public var description: String { "UpdateDeploymentRequest()" }
}

// MARK: - UpdateDeploymentResponse

public struct UpdateDeploymentResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var deployment: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, deployment
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                deployment: JSONValue? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.deployment = deployment
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateDeploymentResponse: CustomStringConvertible {
    public var description: String { "UpdateDeploymentResponse()" }
}