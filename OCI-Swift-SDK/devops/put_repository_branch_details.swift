import Foundation

// MARK: - PutRepositoryBranchDetails

public struct PutRepositoryBranchDetails: Codable, Sendable {

    public var commitId: String?

    private enum CodingKeys: String, CodingKey {
        case commitId
    }

    public init(
                commitId: String? = nil
    ) {
        self.commitId = commitId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension PutRepositoryBranchDetails: CustomStringConvertible {
    public var description: String { "PutRepositoryBranchDetails()" }
}