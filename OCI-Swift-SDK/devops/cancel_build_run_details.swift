import Foundation

// MARK: - CancelBuildRunDetails

public struct CancelBuildRunDetails: Codable, Sendable {

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

extension CancelBuildRunDetails: CustomStringConvertible {
    public var description: String { "CancelBuildRunDetails()" }
}