import Foundation

// MARK: - UpdateDeploymentRequest

public struct UpdateDeploymentRequest: Codable, Sendable {
    public var deploymentId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var isLockOverride: Bool?
    public var updateDeploymentDetails: UpdateDeploymentDetails?

    private enum CodingKeys: String, CodingKey {
        case deploymentId, ifMatch, opcRequestId, isLockOverride, updateDeploymentDetails
    }

    public init(
                deploymentId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                isLockOverride: Bool? = nil,
                updateDeploymentDetails: UpdateDeploymentDetails? = nil
    ) {
        self.deploymentId = deploymentId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.isLockOverride = isLockOverride
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
    public var opcWorkRequestId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case opcWorkRequestId, opcRequestId
    }

    public init(
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateDeploymentResponse: CustomStringConvertible {
    public var description: String { "UpdateDeploymentResponse()" }
}