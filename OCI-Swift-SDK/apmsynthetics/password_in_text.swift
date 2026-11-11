import Foundation

// MARK: - PasswordInText

public struct PasswordInText: Codable, Sendable {

    public var password: String?

    private enum CodingKeys: String, CodingKey {
        case password
    }

    public init(
                password: String? = nil
    ) {
        self.password = password
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension PasswordInText: CustomStringConvertible {
    public var description: String { "PasswordInText()" }
}