import Foundation

// MARK: - ChangeIotFlowRuntimeCompartmentDetails

public struct ChangeIotFlowRuntimeCompartmentDetails: Codable, Sendable {

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

extension ChangeIotFlowRuntimeCompartmentDetails: CustomStringConvertible {
    public var description: String { "ChangeIotFlowRuntimeCompartmentDetails()" }
}