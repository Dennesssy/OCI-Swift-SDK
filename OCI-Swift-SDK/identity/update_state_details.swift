import Foundation

// MARK: - UpdateStateDetails

public struct UpdateStateDetails: Codable, Sendable {

    public var blocked: Bool?

    private enum CodingKeys: String, CodingKey {
        case blocked
    }

    public init(
                blocked: Bool? = nil
    ) {
        self.blocked = blocked
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateStateDetails: CustomStringConvertible {
    public var description: String { "UpdateStateDetails()" }
}