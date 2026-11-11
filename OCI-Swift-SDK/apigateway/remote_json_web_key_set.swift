import Foundation

// MARK: - RemoteJsonWebKeySet

public struct RemoteJsonWebKeySet: Codable, Sendable {

    public var uri: String?
    public var isSslVerifyDisabled: Bool?
    public var maxCacheDurationInHours: Int?

    private enum CodingKeys: String, CodingKey {
        case uri, isSslVerifyDisabled, maxCacheDurationInHours
    }

    public init(
                uri: String? = nil,
                isSslVerifyDisabled: Bool? = nil,
                maxCacheDurationInHours: Int? = nil
    ) {
        self.uri = uri
        self.isSslVerifyDisabled = isSslVerifyDisabled
        self.maxCacheDurationInHours = maxCacheDurationInHours
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RemoteJsonWebKeySet: CustomStringConvertible {
    public var description: String { "RemoteJsonWebKeySet()" }
}