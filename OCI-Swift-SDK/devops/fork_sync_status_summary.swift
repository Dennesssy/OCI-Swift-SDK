import Foundation

// MARK: - ForkSyncStatusSummary

public struct ForkSyncStatusSummary: Codable, Sendable {

    public var syncStatus: ForkSyncStatusSummarySyncStatusEnum
    public var repositoryId: String?
    public var branchName: String?

    private enum CodingKeys: String, CodingKey {
        case syncStatus, repositoryId, branchName
    }

    public init(
                syncStatus: ForkSyncStatusSummarySyncStatusEnum,
                repositoryId: String? = nil,
                branchName: String? = nil
    ) {
        self.syncStatus = syncStatus
        self.repositoryId = repositoryId
        self.branchName = branchName
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ForkSyncStatusSummary: CustomStringConvertible {
    public var description: String { "ForkSyncStatusSummary()" }
}