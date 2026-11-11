import Foundation

// MARK: - MergeSettings

public struct MergeSettings: Codable, Sendable {

    public var defaultMergeStrategy: MergeStrategyEnum?
    public var allowedMergeStrategies: [MergeStrategyEnum]?

    private enum CodingKeys: String, CodingKey {
        case defaultMergeStrategy, allowedMergeStrategies
    }

    public init(
                defaultMergeStrategy: MergeStrategyEnum? = nil,
                allowedMergeStrategies: [MergeStrategyEnum]? = nil
    ) {
        self.defaultMergeStrategy = defaultMergeStrategy
        self.allowedMergeStrategies = allowedMergeStrategies
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension MergeSettings: CustomStringConvertible {
    public var description: String { "MergeSettings()" }
}