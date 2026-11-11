import Foundation

// MARK: - verificationkeysource

public struct verificationkeysource: Codable, Sendable {

    public var jsonData: Data?
    public var verificationKeySourceType: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, verificationKeySourceType
    }

    public init(
                jsonData: Data? = nil,
                verificationKeySourceType: String? = nil
    ) {
        self.jsonData = jsonData
        self.verificationKeySourceType = verificationKeySourceType
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension verificationkeysource: CustomStringConvertible {
    public var description: String { "verificationkeysource()" }
}