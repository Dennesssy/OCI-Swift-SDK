import Foundation
import OCICommon

// MARK: - CancelDeploymentRequest

public struct CancelDeploymentRequest: Codable, Sendable {
    public var deploymentId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var cancelDeploymentDetails: CancelDeploymentDetails?

    private enum CodingKeys: String, CodingKey {
        case deploymentId, ifMatch, opcRequestId, cancelDeploymentDetails
    }

    public init(
                deploymentId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                cancelDeploymentDetails: CancelDeploymentDetails? = nil
    ) {
        self.deploymentId = deploymentId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.cancelDeploymentDetails = cancelDeploymentDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CancelDeploymentRequest: CustomStringConvertible {
    public var description: String { "CancelDeploymentRequest()" }
}

// MARK: - CancelDeploymentResponse

public struct CancelDeploymentResponse: Codable, Sendable {
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

extension CancelDeploymentResponse: CustomStringConvertible {
    public var description: String { "CancelDeploymentResponse()" }
}