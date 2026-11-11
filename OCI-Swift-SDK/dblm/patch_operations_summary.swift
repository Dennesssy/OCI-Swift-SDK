import Foundation

// MARK: - PatchOperationsSummary

public struct PatchOperationsSummary: Codable, Sendable {

    public var scheduledPatchOpsCount: Int?
    public var runningPatchOpsCount: Int?
    public var successfulPatchOpsCount: Int?
    public var warningsPatchOpsCount: Int?
    public var failedPatchOpsCount: Int?

    private enum CodingKeys: String, CodingKey {
        case scheduledPatchOpsCount, runningPatchOpsCount, successfulPatchOpsCount, warningsPatchOpsCount, failedPatchOpsCount
    }

    public init(
                scheduledPatchOpsCount: Int? = nil,
                runningPatchOpsCount: Int? = nil,
                successfulPatchOpsCount: Int? = nil,
                warningsPatchOpsCount: Int? = nil,
                failedPatchOpsCount: Int? = nil
    ) {
        self.scheduledPatchOpsCount = scheduledPatchOpsCount
        self.runningPatchOpsCount = runningPatchOpsCount
        self.successfulPatchOpsCount = successfulPatchOpsCount
        self.warningsPatchOpsCount = warningsPatchOpsCount
        self.failedPatchOpsCount = failedPatchOpsCount
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension PatchOperationsSummary: CustomStringConvertible {
    public var description: String { "PatchOperationsSummary()" }
}