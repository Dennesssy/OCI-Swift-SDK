import Foundation

// MARK: - CreateCredentialPublicSynonymDetails

public struct CreateCredentialPublicSynonymDetails: Codable, Sendable {

    public var key: String?

    private enum CodingKeys: String, CodingKey {
        case key
    }

    public init(
                key: String? = nil
    ) {
        self.key = key
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateCredentialPublicSynonymDetails: CustomStringConvertible {
    public var description: String { "CreateCredentialPublicSynonymDetails()" }
}