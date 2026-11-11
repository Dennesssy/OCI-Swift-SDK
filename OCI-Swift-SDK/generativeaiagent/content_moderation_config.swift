import Foundation

// MARK: - ContentModerationConfig

public struct ContentModerationConfig: Codable, Sendable {

    public var shouldEnableOnInput: Bool?
    public var shouldEnableOnOutput: Bool?

    private enum CodingKeys: String, CodingKey {
        case shouldEnableOnInput, shouldEnableOnOutput
    }

    public init(
                shouldEnableOnInput: Bool? = nil,
                shouldEnableOnOutput: Bool? = nil
    ) {
        self.shouldEnableOnInput = shouldEnableOnInput
        self.shouldEnableOnOutput = shouldEnableOnOutput
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ContentModerationConfig: CustomStringConvertible {
    public var description: String { "ContentModerationConfig()" }
}