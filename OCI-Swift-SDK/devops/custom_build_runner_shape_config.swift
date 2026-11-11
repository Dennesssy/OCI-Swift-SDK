import Foundation

// MARK: - CustomBuildRunnerShapeConfig

public struct CustomBuildRunnerShapeConfig: Codable, Sendable {

    public var ocpus: Int?
    public var memoryInGBs: Int?

    private enum CodingKeys: String, CodingKey {
        case ocpus, memoryInGBs
    }

    public init(
                ocpus: Int? = nil,
                memoryInGBs: Int? = nil
    ) {
        self.ocpus = ocpus
        self.memoryInGBs = memoryInGBs
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CustomBuildRunnerShapeConfig: CustomStringConvertible {
    public var description: String { "CustomBuildRunnerShapeConfig()" }
}