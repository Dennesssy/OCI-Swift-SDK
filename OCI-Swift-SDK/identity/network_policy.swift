import Foundation

// MARK: - NetworkPolicy

public struct NetworkPolicy: Codable, Sendable {

    public var networkSourceIds: [String]?

    private enum CodingKeys: String, CodingKey {
        case networkSourceIds
    }

    public init(
                networkSourceIds: [String]? = nil
    ) {
        self.networkSourceIds = networkSourceIds
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension NetworkPolicy: CustomStringConvertible {
    public var description: String { "NetworkPolicy()" }
}