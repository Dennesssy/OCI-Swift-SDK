import Foundation

// MARK: - ChangeBatchContextCompartmentDetails

public struct ChangeBatchContextCompartmentDetails: Codable, Sendable {

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

extension ChangeBatchContextCompartmentDetails: CustomStringConvertible {
    public var description: String { "ChangeBatchContextCompartmentDetails()" }
}