import Foundation

// MARK: - AdditionalValidationPolicy

public struct AdditionalValidationPolicy: Codable, Sendable {

    public var issuers: [String]?
    public var audiences: [String]?
    public var verifyClaims: [JsonWebTokenClaim]?

    private enum CodingKeys: String, CodingKey {
        case issuers, audiences, verifyClaims
    }

    public init(
                issuers: [String]? = nil,
                audiences: [String]? = nil,
                verifyClaims: [JsonWebTokenClaim]? = nil
    ) {
        self.issuers = issuers
        self.audiences = audiences
        self.verifyClaims = verifyClaims
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension AdditionalValidationPolicy: CustomStringConvertible {
    public var description: String { "AdditionalValidationPolicy()" }
}