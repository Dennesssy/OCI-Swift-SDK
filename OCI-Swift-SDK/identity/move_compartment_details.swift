import Foundation

// MARK: - MoveCompartmentDetails

public struct MoveCompartmentDetails: Codable, Sendable {

    public var targetCompartmentId: String?

    private enum CodingKeys: String, CodingKey {
        case targetCompartmentId
    }

    public init(
                targetCompartmentId: String? = nil
    ) {
        self.targetCompartmentId = targetCompartmentId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension MoveCompartmentDetails: CustomStringConvertible {
    public var description: String { "MoveCompartmentDetails()" }
}