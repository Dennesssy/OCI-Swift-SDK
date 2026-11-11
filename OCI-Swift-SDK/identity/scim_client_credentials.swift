import Foundation

// MARK: - ScimClientCredentials

public struct ScimClientCredentials: Codable, Sendable {

    public var clientId: String?
    public var clientSecret: String?

    private enum CodingKeys: String, CodingKey {
        case clientId, clientSecret
    }

    public init(
                clientId: String? = nil,
                clientSecret: String? = nil
    ) {
        self.clientId = clientId
        self.clientSecret = clientSecret
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ScimClientCredentials: CustomStringConvertible {
    public var description: String { "ScimClientCredentials()" }
}