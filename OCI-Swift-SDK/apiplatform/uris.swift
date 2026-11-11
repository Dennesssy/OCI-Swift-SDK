import Foundation

// MARK: - Uris

public struct Uris: Codable, Sendable {

    public var managementPortalUri: String?
    public var developersPortalUri: String?

    private enum CodingKeys: String, CodingKey {
        case managementPortalUri, developersPortalUri
    }

    public init(
                managementPortalUri: String? = nil,
                developersPortalUri: String? = nil
    ) {
        self.managementPortalUri = managementPortalUri
        self.developersPortalUri = developersPortalUri
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension Uris: CustomStringConvertible {
    public var description: String { "Uris()" }
}