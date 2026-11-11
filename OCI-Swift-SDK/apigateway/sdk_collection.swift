import Foundation

// MARK: - SdkCollection

public struct SdkCollection: Codable, Sendable {

    public var items: [SdkSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [SdkSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension SdkCollection: CustomStringConvertible {
    public var description: String { "SdkCollection()" }
}