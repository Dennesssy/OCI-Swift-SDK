import Foundation

// MARK: - CreateOrUpdateProtectedBranchDetails

public struct CreateOrUpdateProtectedBranchDetails: Codable, Sendable {

    public var branchName: String?
    public var protectionLevels: [ProtectionLevelEnum]?

    private enum CodingKeys: String, CodingKey {
        case branchName, protectionLevels
    }

    public init(
                branchName: String? = nil,
                protectionLevels: [ProtectionLevelEnum]? = nil
    ) {
        self.branchName = branchName
        self.protectionLevels = protectionLevels
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateOrUpdateProtectedBranchDetails: CustomStringConvertible {
    public var description: String { "CreateOrUpdateProtectedBranchDetails()" }
}