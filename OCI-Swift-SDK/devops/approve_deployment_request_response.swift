import Foundation
import OCICommon

// MARK: - ApproveDeploymentRequest

public struct ApproveDeploymentRequest: Codable, Sendable {
    public var deploymentId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var approveDeploymentDetails: ApproveDeploymentDetails?

    private enum CodingKeys: String, CodingKey {
        case deploymentId, ifMatch, opcRequestId, approveDeploymentDetails
    }

    public init(
                deploymentId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                approveDeploymentDetails: ApproveDeploymentDetails? = nil
    ) {
        self.deploymentId = deploymentId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.approveDeploymentDetails = approveDeploymentDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ApproveDeploymentRequest: CustomStringConvertible {
    public var description: String { "ApproveDeploymentRequest()" }
}

// MARK: - ApproveDeploymentResponse

public struct ApproveDeploymentResponse: Codable, Sendable {
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

extension ApproveDeploymentResponse: CustomStringConvertible {
    public var description: String { "ApproveDeploymentResponse()" }
}