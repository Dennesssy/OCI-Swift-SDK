import Foundation

// MARK: - ApproveDeploymentDetails

public struct ApproveDeploymentDetails: Codable, Sendable {

    public var deployStageId: String?
    public var action: ApproveDeploymentDetailsActionEnum
    public var reason: String?

    private enum CodingKeys: String, CodingKey {
        case deployStageId, action, reason
    }

    public init(
                deployStageId: String? = nil,
                action: ApproveDeploymentDetailsActionEnum,
                reason: String? = nil
    ) {
        self.deployStageId = deployStageId
        self.action = action
        self.reason = reason
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ApproveDeploymentDetails: CustomStringConvertible {
    public var description: String { "ApproveDeploymentDetails()" }
}