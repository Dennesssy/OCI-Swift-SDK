import Foundation

// MARK: - AvailabilityDomain

public struct AvailabilityDomain: Codable, Sendable {

    public var name: String?
    public var id: String?
    public var compartmentId: String?

    private enum CodingKeys: String, CodingKey {
        case name, id, compartmentId
    }

    public init(
                name: String? = nil,
                id: String? = nil,
                compartmentId: String? = nil
    ) {
        self.name = name
        self.id = id
        self.compartmentId = compartmentId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension AvailabilityDomain: CustomStringConvertible {
    public var description: String { "AvailabilityDomain()" }
}