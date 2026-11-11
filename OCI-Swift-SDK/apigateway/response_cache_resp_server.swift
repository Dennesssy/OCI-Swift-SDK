import Foundation

// MARK: - ResponseCacheRespServer

public struct ResponseCacheRespServer: Codable, Sendable {

    public var host: String?
    public var port: Int?

    private enum CodingKeys: String, CodingKey {
        case host, port
    }

    public init(
                host: String? = nil,
                port: Int? = nil
    ) {
        self.host = host
        self.port = port
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ResponseCacheRespServer: CustomStringConvertible {
    public var description: String { "ResponseCacheRespServer()" }
}