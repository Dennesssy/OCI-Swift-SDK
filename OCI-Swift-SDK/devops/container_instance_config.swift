import Foundation
import OCICommon

// MARK: - ContainerInstanceConfig

public struct ContainerInstanceConfig: Codable, Sendable {

    public var shapeName: String?
    public var shapeConfig: ShapeConfig?
    public var networkChannel: JSONValue
    public var compartmentId: String?
    public var availabilityDomain: String?

    private enum CodingKeys: String, CodingKey {
        case shapeName, shapeConfig, networkChannel, compartmentId, availabilityDomain
    }

    public init(
                shapeName: String? = nil,
                shapeConfig: ShapeConfig? = nil,
                networkChannel: JSONValue,
                compartmentId: String? = nil,
                availabilityDomain: String? = nil
    ) {
        self.shapeName = shapeName
        self.shapeConfig = shapeConfig
        self.networkChannel = networkChannel
        self.compartmentId = compartmentId
        self.availabilityDomain = availabilityDomain
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ContainerInstanceConfig: CustomStringConvertible {
    public var description: String { "ContainerInstanceConfig()" }
}