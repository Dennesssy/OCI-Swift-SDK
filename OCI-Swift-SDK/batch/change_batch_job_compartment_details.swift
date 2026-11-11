import Foundation

// MARK: - ChangeBatchJobCompartmentDetails

public struct ChangeBatchJobCompartmentDetails: Codable, Sendable {

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

extension ChangeBatchJobCompartmentDetails: CustomStringConvertible {
    public var description: String { "ChangeBatchJobCompartmentDetails()" }
}