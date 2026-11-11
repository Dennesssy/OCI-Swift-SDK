import Foundation

// MARK: - ChangeDeploymentCompartmentRequest

public struct ChangeDeploymentCompartmentRequest: Codable, Sendable {
    public var deploymentId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var isLockOverride: Bool?
    public var changeDeploymentCompartmentDetails: ChangeDeploymentCompartmentDetails?

    private enum CodingKeys: String, CodingKey {
        case deploymentId, ifMatch, opcRequestId, isLockOverride, changeDeploymentCompartmentDetails
    }

    public init(
                deploymentId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                isLockOverride: Bool? = nil,
                changeDeploymentCompartmentDetails: ChangeDeploymentCompartmentDetails? = nil
    ) {
        self.deploymentId = deploymentId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.isLockOverride = isLockOverride
        self.changeDeploymentCompartmentDetails = changeDeploymentCompartmentDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ChangeDeploymentCompartmentRequest: CustomStringConvertible {
    public var description: String { "ChangeDeploymentCompartmentRequest()" }
}

// MARK: - ChangeDeploymentCompartmentResponse

public struct ChangeDeploymentCompartmentResponse: Codable, Sendable {
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

extension ChangeDeploymentCompartmentResponse: CustomStringConvertible {
    public var description: String { "ChangeDeploymentCompartmentResponse()" }
}