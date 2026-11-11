import Foundation

// MARK: - ProjectRepositorySettings

public struct ProjectRepositorySettings: Codable, Sendable {

    public var mergeSettings: MergeSettings?
    public var approvalRules: ApprovalRuleCollection?

    private enum CodingKeys: String, CodingKey {
        case mergeSettings, approvalRules
    }

    public init(
                mergeSettings: MergeSettings? = nil,
                approvalRules: ApprovalRuleCollection? = nil
    ) {
        self.mergeSettings = mergeSettings
        self.approvalRules = approvalRules
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ProjectRepositorySettings: CustomStringConvertible {
    public var description: String { "ProjectRepositorySettings()" }
}