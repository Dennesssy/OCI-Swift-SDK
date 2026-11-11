import Foundation

// MARK: - ShapeConfig

public struct ShapeConfig: Codable, Sendable {

    public var ocpus: Float?
    public var memoryInGBs: Float?

    private enum CodingKeys: String, CodingKey {
        case ocpus, memoryInGBs
    }

    public init(
                ocpus: Float? = nil,
                memoryInGBs: Float? = nil
    ) {
        self.ocpus = ocpus
        self.memoryInGBs = memoryInGBs
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ShapeConfig: CustomStringConvertible {
    public var description: String { "ShapeConfig()" }
}