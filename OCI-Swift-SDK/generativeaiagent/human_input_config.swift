import Foundation

// MARK: - HumanInputConfig

public struct HumanInputConfig: Codable, Sendable {

    public var shouldEnableHumanInput: Bool?

    private enum CodingKeys: String, CodingKey {
        case shouldEnableHumanInput
    }

    public init(
                shouldEnableHumanInput: Bool? = nil
    ) {
        self.shouldEnableHumanInput = shouldEnableHumanInput
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension HumanInputConfig: CustomStringConvertible {
    public var description: String { "HumanInputConfig()" }
}