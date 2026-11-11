import Foundation

// MARK: - password

public struct password: Codable, Sendable {

    public var jsonData: Data?
    public var passwordType: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, passwordType
    }

    public init(
                jsonData: Data? = nil,
                passwordType: String? = nil
    ) {
        self.jsonData = jsonData
        self.passwordType = passwordType
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension password: CustomStringConvertible {
    public var description: String { "password()" }
}