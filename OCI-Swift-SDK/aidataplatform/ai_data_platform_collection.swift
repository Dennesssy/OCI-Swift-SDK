import Foundation

// MARK: - AiDataPlatformCollection

public struct AiDataPlatformCollection: Codable, Sendable {

    public var items: [AiDataPlatformSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [AiDataPlatformSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension AiDataPlatformCollection: CustomStringConvertible {
    public var description: String { "AiDataPlatformCollection()" }
}