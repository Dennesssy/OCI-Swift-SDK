import Foundation
import OCICommon

// MARK: - GetDeploymentRequest

public struct GetDeploymentRequest: Codable, Sendable {
    public var deploymentId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case deploymentId, opcRequestId
    }

    public init(
                deploymentId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.deploymentId = deploymentId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetDeploymentRequest: CustomStringConvertible {
    public var description: String { "GetDeploymentRequest()" }
}

// MARK: - GetDeploymentResponse

public struct GetDeploymentResponse: Codable, Sendable {
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

extension GetDeploymentResponse: CustomStringConvertible {
    public var description: String { "GetDeploymentResponse()" }
}