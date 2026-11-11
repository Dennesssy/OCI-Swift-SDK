import Foundation

// MARK: - HelmDiffArgument

public struct HelmDiffArgument: Codable, Sendable {

    public var stageId: String?
    public var helmArgSetValues: HelmSetValueCollection?
    public var helmArgStringValues: HelmSetValueCollection?
    public var valueArtifactContents: ValueArtifactContentCollection?
    public var helmStageContents: [HelmStageContent]?

    private enum CodingKeys: String, CodingKey {
        case stageId, helmArgSetValues, helmArgStringValues, valueArtifactContents, helmStageContents
    }

    public init(
                stageId: String? = nil,
                helmArgSetValues: HelmSetValueCollection? = nil,
                helmArgStringValues: HelmSetValueCollection? = nil,
                valueArtifactContents: ValueArtifactContentCollection? = nil,
                helmStageContents: [HelmStageContent]? = nil
    ) {
        self.stageId = stageId
        self.helmArgSetValues = helmArgSetValues
        self.helmArgStringValues = helmArgStringValues
        self.valueArtifactContents = valueArtifactContents
        self.helmStageContents = helmStageContents
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension HelmDiffArgument: CustomStringConvertible {
    public var description: String { "HelmDiffArgument()" }
}