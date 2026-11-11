import Foundation

// MARK: - PemEncodedPublicKey

public struct PemEncodedPublicKey: Codable, Sendable {

    public var kid: String?
    public var key: String?

    private enum CodingKeys: String, CodingKey {
        case kid, key
    }

    public init(
                kid: String? = nil,
                key: String? = nil
    ) {
        self.kid = kid
        self.key = key
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension PemEncodedPublicKey: CustomStringConvertible {
    public var description: String { "PemEncodedPublicKey()" }
}