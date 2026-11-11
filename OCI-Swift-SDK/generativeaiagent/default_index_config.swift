import Foundation

// MARK: - DefaultIndexConfig

public struct DefaultIndexConfig: Codable, Sendable {

    public var shouldEnableHybridSearch: Bool?

    private enum CodingKeys: String, CodingKey {
        case shouldEnableHybridSearch
    }

    public init(
                shouldEnableHybridSearch: Bool? = nil
    ) {
        self.shouldEnableHybridSearch = shouldEnableHybridSearch
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DefaultIndexConfig: CustomStringConvertible {
    public var description: String { "DefaultIndexConfig()" }
}