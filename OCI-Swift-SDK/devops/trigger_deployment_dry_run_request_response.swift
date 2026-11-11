import Foundation

// MARK: - TriggerDeploymentDryRunRequest

public struct TriggerDeploymentDryRunRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var triggerDeploymentDryRunDetails: TriggerDeploymentDryRunDetails?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, triggerDeploymentDryRunDetails
    }

    public init(
                opcRequestId: String? = nil,
                triggerDeploymentDryRunDetails: TriggerDeploymentDryRunDetails? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.triggerDeploymentDryRunDetails = triggerDeploymentDryRunDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension TriggerDeploymentDryRunRequest: CustomStringConvertible {
    public var description: String { "TriggerDeploymentDryRunRequest()" }
}

// MARK: - TriggerDeploymentDryRunResponse

public struct TriggerDeploymentDryRunResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var triggerDryRunResult: TriggerDryRunResult?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, triggerDryRunResult
    }

    public init(
                opcRequestId: String? = nil,
                triggerDryRunResult: TriggerDryRunResult? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.triggerDryRunResult = triggerDryRunResult
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension TriggerDeploymentDryRunResponse: CustomStringConvertible {
    public var description: String { "TriggerDeploymentDryRunResponse()" }
}