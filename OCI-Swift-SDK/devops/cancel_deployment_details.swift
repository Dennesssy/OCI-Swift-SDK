import Foundation

// MARK: - CancelDeploymentDetails

public struct CancelDeploymentDetails: Codable, Sendable {

    public var reason: String?

    private enum CodingKeys: String, CodingKey {
        case reason
    }

    public init(
                reason: String? = nil
    ) {
        self.reason = reason
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CancelDeploymentDetails: CustomStringConvertible {
    public var description: String { "CancelDeploymentDetails()" }
}