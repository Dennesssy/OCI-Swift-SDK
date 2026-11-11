import Foundation

// MARK: - Configuration

public struct Configuration: Codable, Sendable {

    public var discoveryInterval: Int?
    public var domainSearchPaths: [String]

    private enum CodingKeys: String, CodingKey {
        case discoveryInterval, domainSearchPaths
    }

    public init(
                discoveryInterval: Int? = nil,
                domainSearchPaths: [String]
    ) {
        self.discoveryInterval = discoveryInterval
        self.domainSearchPaths = domainSearchPaths
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension Configuration: CustomStringConvertible {
    public var description: String { "Configuration()" }
}