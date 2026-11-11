import Foundation

// MARK: - OnPremiseVpWorkerVersionDetails

public struct OnPremiseVpWorkerVersionDetails: Codable, Sendable {

    public var version: String?
    public var minSupportedVersion: String?
    public var latestVersion: String?

    private enum CodingKeys: String, CodingKey {
        case version, minSupportedVersion, latestVersion
    }

    public init(
                version: String? = nil,
                minSupportedVersion: String? = nil,
                latestVersion: String? = nil
    ) {
        self.version = version
        self.minSupportedVersion = minSupportedVersion
        self.latestVersion = latestVersion
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension OnPremiseVpWorkerVersionDetails: CustomStringConvertible {
    public var description: String { "OnPremiseVpWorkerVersionDetails()" }
}