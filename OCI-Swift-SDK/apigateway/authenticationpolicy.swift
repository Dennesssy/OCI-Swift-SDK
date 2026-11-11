import Foundation

// MARK: - authenticationpolicy

public struct authenticationpolicy: Codable, Sendable {

    public var jsonData: Data?
    public var isAnonymousAccessAllowed: Bool?
    public var type: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, isAnonymousAccessAllowed, type
    }

    public init(
                jsonData: Data? = nil,
                isAnonymousAccessAllowed: Bool? = nil,
                type: String? = nil
    ) {
        self.jsonData = jsonData
        self.isAnonymousAccessAllowed = isAnonymousAccessAllowed
        self.type = type
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension authenticationpolicy: CustomStringConvertible {
    public var description: String { "authenticationpolicy()" }
}