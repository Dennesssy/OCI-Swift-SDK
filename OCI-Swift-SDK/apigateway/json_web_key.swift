import Foundation

// MARK: - JsonWebKey

public struct JsonWebKey: Codable, Sendable {

    public var kid: String?
    public var n: String?
    public var e: String?
    public var alg: String?
    public var kty: JsonWebKeyKtyEnum
    public var use: JsonWebKeyUseEnum?
    public var keyOps: [JsonWebKeyKeyOpsEnum]?

    private enum CodingKeys: String, CodingKey {
        case kid, n, e, alg, kty, use, keyOps
    }

    public init(
                kid: String? = nil,
                n: String? = nil,
                e: String? = nil,
                alg: String? = nil,
                kty: JsonWebKeyKtyEnum,
                use: JsonWebKeyUseEnum? = nil,
                keyOps: [JsonWebKeyKeyOpsEnum]? = nil
    ) {
        self.kid = kid
        self.n = n
        self.e = e
        self.alg = alg
        self.kty = kty
        self.use = use
        self.keyOps = keyOps
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension JsonWebKey: CustomStringConvertible {
    public var description: String { "JsonWebKey()" }
}