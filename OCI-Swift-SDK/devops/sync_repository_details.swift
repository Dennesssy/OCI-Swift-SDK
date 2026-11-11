import Foundation

// MARK: - SyncRepositoryDetails

public struct SyncRepositoryDetails: Codable, Sendable {

    public var sourceBranch: String?
    public var destinationBranch: String?

    private enum CodingKeys: String, CodingKey {
        case sourceBranch, destinationBranch
    }

    public init(
                sourceBranch: String? = nil,
                destinationBranch: String? = nil
    ) {
        self.sourceBranch = sourceBranch
        self.destinationBranch = destinationBranch
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension SyncRepositoryDetails: CustomStringConvertible {
    public var description: String { "SyncRepositoryDetails()" }
}