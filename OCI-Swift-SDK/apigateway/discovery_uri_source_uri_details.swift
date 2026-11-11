import Foundation

// MARK: - DiscoveryUriSourceUriDetails

public struct DiscoveryUriSourceUriDetails: Codable, Sendable {

    public var uri: String?

    private enum CodingKeys: String, CodingKey {
        case uri
    }

    public init(
                uri: String? = nil
    ) {
        self.uri = uri
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DiscoveryUriSourceUriDetails: CustomStringConvertible {
    public var description: String { "DiscoveryUriSourceUriDetails()" }
}