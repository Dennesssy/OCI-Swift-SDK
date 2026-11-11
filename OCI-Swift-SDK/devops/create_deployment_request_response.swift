import Foundation
import OCICommon

// MARK: - CreateDeploymentRequest

public struct CreateDeploymentRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var createDeploymentDetails: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, createDeploymentDetails
    }

    public init(
                opcRequestId: String? = nil,
                createDeploymentDetails: JSONValue? = nil
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

extension CreateDeploymentResponse: CustomStringConvertible {
    public var description: String { "CreateDeploymentResponse()" }
}