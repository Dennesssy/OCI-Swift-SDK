import Foundation

// MARK: - ActualBuildRunnerShapeConfig

public struct ActualBuildRunnerShapeConfig: Codable, Sendable {

    public var ocpus: Double?
    public var memoryInGBs: Double?

    private enum CodingKeys: String, CodingKey {
        case ocpus, memoryInGBs
    }

    public init(
                ocpus: Double? = nil,
                memoryInGBs: Double? = nil
    ) {
        self.ocpus = ocpus
        self.memoryInGBs = memoryInGBs
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ActualBuildRunnerShapeConfig: CustomStringConvertible {
    public var description: String { "ActualBuildRunnerShapeConfig()" }
}