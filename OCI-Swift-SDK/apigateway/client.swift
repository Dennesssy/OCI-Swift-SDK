import Foundation

// MARK: - Client

public struct Client: Codable, Sendable {

    public var name: String?
    public var token: String?

    private enum CodingKeys: String, CodingKey {
        case name, token
    }

    public init(
                name: String? = nil,
                token: String? = nil
    ) {
        self.name = name
        self.token = token
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension Client: CustomStringConvertible {
    public var description: String { "Client()" }
}