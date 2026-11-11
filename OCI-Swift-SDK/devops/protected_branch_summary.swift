import Foundation
import OCICommon

// MARK: - ProtectedBranchSummary

public struct ProtectedBranchSummary: Codable, Sendable {

    public var branchName: String?
    public var protectionLevels: [ProtectionLevelEnum]
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case branchName, protectionLevels, freeformTags, definedTags, systemTags
    }

    public init(
                branchName: String? = nil,
                protectionLevels: [ProtectionLevelEnum],
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.branchName = branchName
        self.protectionLevels = protectionLevels
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ProtectedBranchSummary: CustomStringConvertible {
    public var description: String { "ProtectedBranchSummary()" }
}