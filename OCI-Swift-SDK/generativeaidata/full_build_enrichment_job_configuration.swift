import Foundation

// MARK: - FullBuildEnrichmentJobConfiguration

public struct FullBuildEnrichmentJobConfiguration: Codable, Sendable {

    public var schemaName: String?

    private enum CodingKeys: String, CodingKey {
        case schemaName
    }

    public init(
                schemaName: String? = nil
    ) {
        self.schemaName = schemaName
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension FullBuildEnrichmentJobConfiguration: CustomStringConvertible {
    public var description: String { "FullBuildEnrichmentJobConfiguration()" }
}