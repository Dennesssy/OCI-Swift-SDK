import Foundation
import OCICommon

// MARK: - CreateDeployEnvironmentRequest

public struct CreateDeployEnvironmentRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var createDeployEnvironmentDetails: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, createDeployEnvironmentDetails
    }

    public init(
                opcRequestId: String? = nil,
                createDeployEnvironmentDetails: JSONValue? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.createDeployEnvironmentDetails = createDeployEnvironmentDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateDeployEnvironmentRequest: CustomStringConvertible {
    public var description: String { "CreateDeployEnvironmentRequest()" }
}

// MARK: - CreateDeployEnvironmentResponse

public struct CreateDeployEnvironmentResponse: Codable, Sendable {
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

extension CreateDeployEnvironmentResponse: CustomStringConvertible {
    public var description: String { "CreateDeployEnvironmentResponse()" }
}