import Foundation

// MARK: - Agreement

public struct Agreement: Codable, Sendable {

    public var uuid: String?
    public var termsAndConditionsText: String?
    public var signature: String?

    private enum CodingKeys: String, CodingKey {
        case uuid, termsAndConditionsText, signature
    }

    public init(
                uuid: String? = nil,
                termsAndConditionsText: String? = nil,
                signature: String? = nil
    ) {
        self.uuid = uuid
        self.termsAndConditionsText = termsAndConditionsText
        self.signature = signature
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension Agreement: CustomStringConvertible {
    public var description: String { "Agreement()" }
}