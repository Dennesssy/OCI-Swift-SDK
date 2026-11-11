import Foundation

// MARK: - DeleteDeploymentRequest

public struct DeleteDeploymentRequest: Codable, Sendable {
    public var deploymentId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var isLockOverride: Bool?

    private enum CodingKeys: String, CodingKey {
        case deploymentId, ifMatch, opcRequestId, isLockOverride
    }

    public init(
                deploymentId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                isLockOverride: Bool? = nil
    ) {
        self.deploymentId = deploymentId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.isLockOverride = isLockOverride
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteDeploymentRequest: CustomStringConvertible {
    public var description: String { "DeleteDeploymentRequest()" }
}

// MARK: - DeleteDeploymentResponse

public struct DeleteDeploymentResponse: Codable, Sendable {
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

extension DeleteDeploymentResponse: CustomStringConvertible {
    public var description: String { "DeleteDeploymentResponse()" }
}