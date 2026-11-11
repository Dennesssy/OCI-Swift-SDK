import Foundation

// MARK: - RepositorySettings

public struct RepositorySettings: Codable, Sendable {

    public var mergeChecks: MergeChecks?
    public var mergeSettings: MergeSettings?
    public var approvalRules: ApprovalRuleCollection?

    private enum CodingKeys: String, CodingKey {
        case mergeChecks, mergeSettings, approvalRules
    }

    public init(
                mergeChecks: MergeChecks? = nil,
                mergeSettings: MergeSettings? = nil,
                approvalRules: ApprovalRuleCollection? = nil
    ) {
        self.mergeChecks = mergeChecks
        self.mergeSettings = mergeSettings
        self.approvalRules = approvalRules
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RepositorySettings: CustomStringConvertible {
    public var description: String { "RepositorySettings()" }
}