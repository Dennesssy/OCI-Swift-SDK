import Foundation

// MARK: - ChangeAgentEndpointCompartmentDetails

public struct ChangeAgentEndpointCompartmentDetails: Codable, Sendable {

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

extension ChangeAgentEndpointCompartmentDetails: CustomStringConvertible {
    public var description: String { "ChangeAgentEndpointCompartmentDetails()" }
}