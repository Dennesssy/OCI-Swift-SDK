import Foundation

// MARK: - SdkLanguageTypeCollection

public struct SdkLanguageTypeCollection: Codable, Sendable {

    public var items: [SdkLanguageTypeSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [SdkLanguageTypeSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension SdkLanguageTypeCollection: CustomStringConvertible {
    public var description: String { "SdkLanguageTypeCollection()" }
}