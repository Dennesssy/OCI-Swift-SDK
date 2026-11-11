import Foundation

// MARK: - EnableSuperuserDetails

public struct EnableSuperuserDetails: Codable, Sendable {

    public var compartmentId: String?
    public var secretId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, secretId
    }

    public init(
                compartmentId: String? = nil,
                secretId: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.secretId = secretId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension EnableSuperuserDetails: CustomStringConvertible {
    public var description: String { "EnableSuperuserDetails()" }
}