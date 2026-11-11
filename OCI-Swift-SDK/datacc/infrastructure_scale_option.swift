import Foundation

// MARK: - InfrastructureScaleOption

public struct InfrastructureScaleOption: Codable, Sendable {

    public var possibleSsdConfigurations: [ShapeEnumEnum]

    private enum CodingKeys: String, CodingKey {
        case possibleSsdConfigurations
    }

    public init(
                possibleSsdConfigurations: [ShapeEnumEnum]
    ) {
        self.possibleSsdConfigurations = possibleSsdConfigurations
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension InfrastructureScaleOption: CustomStringConvertible {
    public var description: String { "InfrastructureScaleOption()" }
}