import Foundation

// MARK: - UserCredential

public struct UserCredential: Codable, Sendable {

    public var key: String?
    public var userName: String?
    public var enabled: String?
    public var owner: String?
    public var windowsDomain: String?
    public var keyType: CredentialKeyTypeEnum?
    public var relatedResource: CredentialRelatedResource?

    private enum CodingKeys: String, CodingKey {
        case key, userName, enabled, owner, windowsDomain, keyType, relatedResource
    }

    public init(
                key: String? = nil,
                userName: String? = nil,
                enabled: String? = nil,
                owner: String? = nil,
                windowsDomain: String? = nil,
                keyType: CredentialKeyTypeEnum? = nil,
                relatedResource: CredentialRelatedResource? = nil
    ) {
        self.key = key
        self.userName = userName
        self.enabled = enabled
        self.owner = owner
        self.windowsDomain = windowsDomain
        self.keyType = keyType
        self.relatedResource = relatedResource
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UserCredential: CustomStringConvertible {
    public var description: String { "UserCredential()" }
}