import Foundation
import OCICommon

// MARK: - ProtectedBranch

public struct ProtectedBranch: Codable, Sendable {

    public var branchName: String?
    public var protectionLevels: [ProtectionLevelEnum]
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case branchName, protectionLevels, freeformTags, definedTags
    }

    public init(
                branchName: String? = nil,
                protectionLevels: [ProtectionLevelEnum],
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.branchName = branchName
        self.protectionLevels = protectionLevels
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ProtectedBranch: CustomStringConvertible {
    public var description: String { "ProtectedBranch()" }
}