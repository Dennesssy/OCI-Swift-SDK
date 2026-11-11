import Foundation

// MARK: - ChangeInfrastructureCompartmentDetails

public struct ChangeInfrastructureCompartmentDetails: Codable, Sendable {

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

extension ChangeInfrastructureCompartmentDetails: CustomStringConvertible {
    public var description: String { "ChangeInfrastructureCompartmentDetails()" }
}