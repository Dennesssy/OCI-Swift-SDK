import Foundation
import OCICommon

// MARK: - DeltaRefreshEnrichmentJobConfiguration

public struct DeltaRefreshEnrichmentJobConfiguration: Codable, Sendable {

    public var schemaName: String?
    public var deltaRefreshSchedule: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case schemaName, deltaRefreshSchedule
    }

    public init(
                schemaName: String? = nil,
                deltaRefreshSchedule: JSONValue? = nil
    ) {
        self.schemaName = schemaName
        self.deltaRefreshSchedule = deltaRefreshSchedule
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeltaRefreshEnrichmentJobConfiguration: CustomStringConvertible {
    public var description: String { "DeltaRefreshEnrichmentJobConfiguration()" }
}