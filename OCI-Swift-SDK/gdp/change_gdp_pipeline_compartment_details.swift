import Foundation

// MARK: - ChangeGdpPipelineCompartmentDetails

public struct ChangeGdpPipelineCompartmentDetails: Codable, Sendable {

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

extension ChangeGdpPipelineCompartmentDetails: CustomStringConvertible {
    public var description: String { "ChangeGdpPipelineCompartmentDetails()" }
}