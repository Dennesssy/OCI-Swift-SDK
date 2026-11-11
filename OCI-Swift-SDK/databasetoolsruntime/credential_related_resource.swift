import Foundation

// MARK: - CredentialRelatedResource

public struct CredentialRelatedResource: Codable, Sendable {

    public var type: CredentialRelatedResourceTypeEnum
    public var identifier: String?

    private enum CodingKeys: String, CodingKey {
        case type, identifier
    }

    public init(
                type: CredentialRelatedResourceTypeEnum,
                identifier: String? = nil
    ) {
        self.type = type
        self.identifier = identifier
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CredentialRelatedResource: CustomStringConvertible {
    public var description: String { "CredentialRelatedResource()" }
}