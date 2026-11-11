import Foundation

// MARK: - CreateOrUpdateGitBranchDetails

public struct CreateOrUpdateGitBranchDetails: Codable, Sendable {

    public var refName: String?
    public var commitId: String?

    private enum CodingKeys: String, CodingKey {
        case refName, commitId
    }

    public init(
                refName: String? = nil,
                commitId: String? = nil
    ) {
        self.refName = refName
        self.commitId = commitId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateOrUpdateGitBranchDetails: CustomStringConvertible {
    public var description: String { "CreateOrUpdateGitBranchDetails()" }
}