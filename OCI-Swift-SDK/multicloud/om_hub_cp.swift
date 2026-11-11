import Foundation

// MARK: - OmHubCp

public struct OmHubCp: Codable, Sendable {

    public var properties: Properties?

    private enum CodingKeys: String, CodingKey {
        case properties
    }

    public init(
                properties: Properties? = nil
    ) {
        self.properties = properties
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension OmHubCp: CustomStringConvertible {
    public var description: String { "OmHubCp()" }
}