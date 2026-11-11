import Foundation

// MARK: - ExecuteSqlResponseScript

public struct ExecuteSqlResponseScript: Codable, Sendable {

    public var items: [ExecuteSqlResponseItemScript]
    public var env: ExecuteSqlResponseEnv?
    public var version: String?

    private enum CodingKeys: String, CodingKey {
        case items, env, version
    }

    public init(
                items: [ExecuteSqlResponseItemScript],
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

extension ExecuteSqlResponseScript: CustomStringConvertible {
    public var description: String { "ExecuteSqlResponseScript()" }
}