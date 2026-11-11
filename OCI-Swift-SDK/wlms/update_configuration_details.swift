import Foundation

// MARK: - UpdateConfigurationDetails

public struct UpdateConfigurationDetails: Codable, Sendable {

    public var discoveryInterval: Int?
    public var domainSearchPaths: [String]?

    private enum CodingKeys: String, CodingKey {
        case discoveryInterval, domainSearchPaths
    }

    public init(
                discoveryInterval: Int? = nil,
                domainSearchPaths: [String]? = nil
    ) {
        self.discoveryInterval = discoveryInterval
        self.domainSearchPaths = domainSearchPaths
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateConfigurationDetails: CustomStringConvertible {
    public var description: String { "UpdateConfigurationDetails()" }
}