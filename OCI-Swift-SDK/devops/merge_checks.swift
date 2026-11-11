import Foundation

// MARK: - MergeChecks

public struct MergeChecks: Codable, Sendable {

    public var lastBuildSucceeded: MergeCheckSettingsValueEnum

    private enum CodingKeys: String, CodingKey {
        case lastBuildSucceeded
    }

    public init(
                lastBuildSucceeded: MergeCheckSettingsValueEnum
    ) {
        self.lastBuildSucceeded = lastBuildSucceeded
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension MergeChecks: CustomStringConvertible {
    public var description: String { "MergeChecks()" }
}