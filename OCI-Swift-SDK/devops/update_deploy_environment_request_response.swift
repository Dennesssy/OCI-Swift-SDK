import Foundation
import OCICommon

// MARK: - UpdateDeployEnvironmentRequest

public struct UpdateDeployEnvironmentRequest: Codable, Sendable {
    public var deployEnvironmentId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateDeployEnvironmentDetails: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case deployEnvironmentId, ifMatch, opcRequestId, updateDeployEnvironmentDetails
    }

    public init(
                deployEnvironmentId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateDeployEnvironmentDetails: JSONValue? = nil
    ) {
        self.deployEnvironmentId = deployEnvironmentId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateDeployEnvironmentDetails = updateDeployEnvironmentDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateDeployEnvironmentRequest: CustomStringConvertible {
    public var description: String { "UpdateDeployEnvironmentRequest()" }
}

// MARK: - UpdateDeployEnvironmentResponse

public struct UpdateDeployEnvironmentResponse: Codable, Sendable {
    public var location: String?
    public var etag: String?
    public var opcWorkRequestId: String?
    public var opcRequestId: String?
    public var deployEnvironment: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case location, etag, opcWorkRequestId, opcRequestId, deployEnvironment
    }

    public init(
                location: String? = nil,
                etag: String? = nil,
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil,
                deployEnvironment: JSONValue? = nil
    ) {
        self.location = location
        self.etag = etag
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
        self.deployEnvironment = deployEnvironment
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateDeployEnvironmentResponse: CustomStringConvertible {
    public var description: String { "UpdateDeployEnvironmentResponse()" }
}