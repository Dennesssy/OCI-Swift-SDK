import Foundation

// MARK: - executesqlresponse

public struct executesqlresponse: Codable, Sendable {

    public var jsonData: Data?
    public var env: ExecuteSqlResponseEnv?
    public var version: String?
    public var type: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, env, version, type
    }

    public init(
                jsonData: Data? = nil,
                env: ExecuteSqlResponseEnv? = nil,
                version: String? = nil,
                type: String? = nil
    ) {
        self.jsonData = jsonData
        self.env = env
        self.version = version
        self.type = type
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension executesqlresponse: CustomStringConvertible {
    public var description: String { "executesqlresponse()" }
}