import Foundation

// MARK: - UpdateProjectRepositorySettingsDetails

public struct UpdateProjectRepositorySettingsDetails: Codable, Sendable {

    public var mergeSettings: MergeSettings?
    public var approvalRules: UpdateApprovalRuleDetailsCollection?

    private enum CodingKeys: String, CodingKey {
        case mergeSettings, approvalRules
    }

    public init(
                mergeSettings: MergeSettings? = nil,
                approvalRules: UpdateApprovalRuleDetailsCollection? = nil
    ) {
        self.mergeSettings = mergeSettings
        self.approvalRules = approvalRules
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateProjectRepositorySettingsDetails: CustomStringConvertible {
    public var description: String { "UpdateProjectRepositorySettingsDetails()" }
}