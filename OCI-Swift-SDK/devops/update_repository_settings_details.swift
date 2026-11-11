import Foundation

// MARK: - UpdateRepositorySettingsDetails

public struct UpdateRepositorySettingsDetails: Codable, Sendable {

    public var mergeChecks: MergeChecks?
    public var mergeSettings: MergeSettings?
    public var approvalRules: UpdateApprovalRuleDetailsCollection?

    private enum CodingKeys: String, CodingKey {
        case mergeChecks, mergeSettings, approvalRules
    }

    public init(
                mergeChecks: MergeChecks? = nil,
                mergeSettings: MergeSettings? = nil,
                approvalRules: UpdateApprovalRuleDetailsCollection? = nil
    ) {
        self.mergeChecks = mergeChecks
        self.mergeSettings = mergeSettings
        self.approvalRules = approvalRules
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateRepositorySettingsDetails: CustomStringConvertible {
    public var description: String { "UpdateRepositorySettingsDetails()" }
}