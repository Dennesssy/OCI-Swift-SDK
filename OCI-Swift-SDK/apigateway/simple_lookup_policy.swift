import Foundation

// MARK: - SimpleLookupPolicy

public struct SimpleLookupPolicy: Codable, Sendable {

    public var isEnabled: Bool?
    public var isPrivateCachingEnabled: Bool?
    public var cacheKeyAdditions: [String]?

    private enum CodingKeys: String, CodingKey {
        case isEnabled, isPrivateCachingEnabled, cacheKeyAdditions
    }

    public init(
                isEnabled: Bool? = nil,
                isPrivateCachingEnabled: Bool? = nil,
                cacheKeyAdditions: [String]? = nil
    ) {
        self.isEnabled = isEnabled
        self.isPrivateCachingEnabled = isPrivateCachingEnabled
        self.cacheKeyAdditions = cacheKeyAdditions
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension SimpleLookupPolicy: CustomStringConvertible {
    public var description: String { "SimpleLookupPolicy()" }
}