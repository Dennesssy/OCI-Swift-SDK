import Foundation

// MARK: - CspZoneKeyReferenceId

public struct CspZoneKeyReferenceId: Codable, Sendable {

    public var keyValue: String?
    public var keyName: String?

    private enum CodingKeys: String, CodingKey {
        case keyValue, keyName
    }

    public init(
                keyValue: String? = nil,
                keyName: String? = nil
    ) {
        self.keyValue = keyValue
        self.keyName = keyName
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CspZoneKeyReferenceId: CustomStringConvertible {
    public var description: String { "CspZoneKeyReferenceId()" }
}