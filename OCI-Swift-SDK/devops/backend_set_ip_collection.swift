import Foundation

// MARK: - BackendSetIpCollection

public struct BackendSetIpCollection: Codable, Sendable {

    public var items: [String]?

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [String]? = nil
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BackendSetIpCollection: CustomStringConvertible {
    public var description: String { "BackendSetIpCollection()" }
}