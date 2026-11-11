import Foundation

// MARK: - ChangeOracleDbGcpKeyRingCompartmentDetails

public struct ChangeOracleDbGcpKeyRingCompartmentDetails: Codable, Sendable {

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

extension ChangeOracleDbGcpKeyRingCompartmentDetails: CustomStringConvertible {
    public var description: String { "ChangeOracleDbGcpKeyRingCompartmentDetails()" }
}