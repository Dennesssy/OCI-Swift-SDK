import Foundation

// MARK: - MfaTotpToken

public struct MfaTotpToken: Codable, Sendable {

    public var totpToken: String?

    private enum CodingKeys: String, CodingKey {
        case totpToken
    }

    public init(
                totpToken: String? = nil
    ) {
        self.totpToken = totpToken
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension MfaTotpToken: CustomStringConvertible {
    public var description: String { "MfaTotpToken()" }
}