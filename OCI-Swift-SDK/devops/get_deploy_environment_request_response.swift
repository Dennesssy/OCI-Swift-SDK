import Foundation
import OCICommon

// MARK: - GetDeployEnvironmentRequest

public struct GetDeployEnvironmentRequest: Codable, Sendable {
    public var deployEnvironmentId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case deployEnvironmentId, opcRequestId
    }

    public init(
                deployEnvironmentId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.deployEnvironmentId = deployEnvironmentId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetDeployEnvironmentRequest: CustomStringConvertible {
    public var description: String { "GetDeployEnvironmentRequest()" }
}

// MARK: - GetDeployEnvironmentResponse

public struct GetDeployEnvironmentResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var deployEnvironment: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, deployEnvironment
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                deployEnvironment: JSONValue? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.deployEnvironment = deployEnvironment
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetDeployEnvironmentResponse: CustomStringConvertible {
    public var description: String { "GetDeployEnvironmentResponse()" }
}