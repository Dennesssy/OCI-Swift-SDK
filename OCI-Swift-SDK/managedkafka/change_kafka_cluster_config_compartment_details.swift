import Foundation

// MARK: - ChangeKafkaClusterConfigCompartmentDetails

public struct ChangeKafkaClusterConfigCompartmentDetails: Codable, Sendable {

    public var compartmentId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId
    }

    public init(
                compartmentId: String? = nil
    ) {
        self.compartmentId = compartmentId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ChangeKafkaClusterConfigCompartmentDetails: CustomStringConvertible {
    public var description: String { "ChangeKafkaClusterConfigCompartmentDetails()" }
}