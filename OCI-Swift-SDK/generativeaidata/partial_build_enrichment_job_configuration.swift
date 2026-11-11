import Foundation

// MARK: - PartialBuildEnrichmentJobConfiguration

public struct PartialBuildEnrichmentJobConfiguration: Codable, Sendable {

    public var schemaName: String?
    public var databaseObjects: [DatabaseObject]

    private enum CodingKeys: String, CodingKey {
        case schemaName, databaseObjects
    }

    public init(
                schemaName: String? = nil,
                databaseObjects: [DatabaseObject]
    ) {
        self.schemaName = schemaName
        self.databaseObjects = databaseObjects
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension PartialBuildEnrichmentJobConfiguration: CustomStringConvertible {
    public var description: String { "PartialBuildEnrichmentJobConfiguration()" }
}