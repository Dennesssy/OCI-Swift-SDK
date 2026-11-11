import Foundation

// MARK: - PasswordPolicy

public struct PasswordPolicy: Codable, Sendable {

    public var minimumPasswordLength: Int?
    public var isUppercaseCharactersRequired: Bool?
    public var isLowercaseCharactersRequired: Bool?
    public var isNumericCharactersRequired: Bool?
    public var isSpecialCharactersRequired: Bool?
    public var isUsernameContainmentAllowed: Bool?

    private enum CodingKeys: String, CodingKey {
        case minimumPasswordLength, isUppercaseCharactersRequired, isLowercaseCharactersRequired, isNumericCharactersRequired, isSpecialCharactersRequired, isUsernameContainmentAllowed
    }

    public init(
                minimumPasswordLength: Int? = nil,
                isUppercaseCharactersRequired: Bool? = nil,
                isLowercaseCharactersRequired: Bool? = nil,
                isNumericCharactersRequired: Bool? = nil,
                isSpecialCharactersRequired: Bool? = nil,
                isUsernameContainmentAllowed: Bool? = nil
    ) {
        self.minimumPasswordLength = minimumPasswordLength
        self.isUppercaseCharactersRequired = isUppercaseCharactersRequired
        self.isLowercaseCharactersRequired = isLowercaseCharactersRequired
        self.isNumericCharactersRequired = isNumericCharactersRequired
        self.isSpecialCharactersRequired = isSpecialCharactersRequired
        self.isUsernameContainmentAllowed = isUsernameContainmentAllowed
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension PasswordPolicy: CustomStringConvertible {
    public var description: String { "PasswordPolicy()" }
}