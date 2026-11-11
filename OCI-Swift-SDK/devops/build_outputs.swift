import Foundation

// MARK: - BuildOutputs

public struct BuildOutputs: Codable, Sendable {

    public var exportedVariables: ExportedVariableCollection?
    public var deliveredArtifacts: DeliveredArtifactCollection?
    public var artifactOverrideParameters: DeployArtifactOverrideArgumentCollection?
    public var vulnerabilityAuditSummaryCollection: VulnerabilityAuditSummaryCollection?

    private enum CodingKeys: String, CodingKey {
        case exportedVariables, deliveredArtifacts, artifactOverrideParameters, vulnerabilityAuditSummaryCollection
    }

    public init(
                exportedVariables: ExportedVariableCollection? = nil,
                deliveredArtifacts: DeliveredArtifactCollection? = nil,
                artifactOverrideParameters: DeployArtifactOverrideArgumentCollection? = nil,
                vulnerabilityAuditSummaryCollection: VulnerabilityAuditSummaryCollection? = nil
    ) {
        self.exportedVariables = exportedVariables
        self.deliveredArtifacts = deliveredArtifacts
        self.artifactOverrideParameters = artifactOverrideParameters
        self.vulnerabilityAuditSummaryCollection = vulnerabilityAuditSummaryCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BuildOutputs: CustomStringConvertible {
    public var description: String { "BuildOutputs()" }
}