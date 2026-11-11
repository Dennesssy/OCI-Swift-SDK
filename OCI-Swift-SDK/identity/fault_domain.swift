import Foundation

// MARK: - FaultDomain

public struct FaultDomain: Codable, Sendable {

    public var name: String?
    public var id: String?
    public var compartmentId: String?
    public var availabilityDomain: String?

    private enum CodingKeys: String, CodingKey {
        case name, id, compartmentId, availabilityDomain
    }

    public init(
                name: String? = nil,
                id: String? = nil,
                compartmentId: String? = nil,
                availabilityDomain: String? = nil
    ) {
        self.name = name
        self.id = id
        self.compartmentId = compartmentId
        self.availabilityDomain = availabilityDomain
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension FaultDomain: CustomStringConvertible {
    public var description: String { "FaultDomain()" }
}