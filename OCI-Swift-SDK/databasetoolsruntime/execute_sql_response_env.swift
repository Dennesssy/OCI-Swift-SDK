import Foundation

// MARK: - ExecuteSqlResponseEnv

public struct ExecuteSqlResponseEnv: Codable, Sendable {

    public var defaultTimeZone: String?

    private enum CodingKeys: String, CodingKey {
        case defaultTimeZone
    }

    public init(
                defaultTimeZone: String? = nil
    ) {
        self.defaultTimeZone = defaultTimeZone
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ExecuteSqlResponseEnv: CustomStringConvertible {
    public var description: String { "ExecuteSqlResponseEnv()" }
}