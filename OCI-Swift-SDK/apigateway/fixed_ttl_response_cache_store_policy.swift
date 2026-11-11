import Foundation

// MARK: - FixedTtlResponseCacheStorePolicy

public struct FixedTtlResponseCacheStorePolicy: Codable, Sendable {

    public var timeToLiveInSeconds: Int?

    private enum CodingKeys: String, CodingKey {
        case timeToLiveInSeconds
    }

    public init(
                timeToLiveInSeconds: Int? = nil
    ) {
        self.timeToLiveInSeconds = timeToLiveInSeconds
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension FixedTtlResponseCacheStorePolicy: CustomStringConvertible {
    public var description: String { "FixedTtlResponseCacheStorePolicy()" }
}