import Foundation

// MARK: - ExecuteSqlResponseStandard

public struct ExecuteSqlResponseStandard: Codable, Sendable {

    public var items: [ExecuteSqlResponseItemStandard]
    public var env: ExecuteSqlResponseEnv?
    public var version: String?

    private enum CodingKeys: String, CodingKey {
        case items, env, version
    }

    public init(
                items: [ExecuteSqlResponseItemStandard],
                env: ExecuteSqlResponseEnv? = nil,
                version: String? = nil
    ) {
        self.items = items
        self.env = env
        self.version = version
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ExecuteSqlResponseStandard: CustomStringConvertible {
    public var description: String { "ExecuteSqlResponseStandard()" }
}