import Foundation

// MARK: - ExecuteSqlResponseBatch

public struct ExecuteSqlResponseBatch: Codable, Sendable {

    public var items: [ExecuteSqlResponseItemBatch]
    public var env: ExecuteSqlResponseEnv?
    public var version: String?

    private enum CodingKeys: String, CodingKey {
        case items, env, version
    }

    public init(
                items: [ExecuteSqlResponseItemBatch],
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

extension ExecuteSqlResponseBatch: CustomStringConvertible {
    public var description: String { "ExecuteSqlResponseBatch()" }
}