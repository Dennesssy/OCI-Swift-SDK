import Foundation

// MARK: - InlinePublicKeyVerificationKeySource

public struct InlinePublicKeyVerificationKeySource: Codable, Sendable {

    public var currentPublicKey: String?
    public var previousPublicKey: String?

    private enum CodingKeys: String, CodingKey {
        case currentPublicKey, previousPublicKey
    }

    public init(
                currentPublicKey: String? = nil,
                previousPublicKey: String? = nil
    ) {
        self.currentPublicKey = currentPublicKey
        self.previousPublicKey = previousPublicKey
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension InlinePublicKeyVerificationKeySource: CustomStringConvertible {
    public var description: String { "InlinePublicKeyVerificationKeySource()" }
}