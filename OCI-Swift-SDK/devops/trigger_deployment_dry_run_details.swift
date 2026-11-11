import Foundation
import OCICommon

// MARK: - TriggerDeploymentDryRunDetails

public struct TriggerDeploymentDryRunDetails: Codable, Sendable {

    public var helmDiffArguments: HelmDiffArgumentCollection?
    public var createDeploymentDetails: JSONValue

    private enum CodingKeys: String, CodingKey {
        case helmDiffArguments, createDeploymentDetails
    }

    public init(
                helmDiffArguments: HelmDiffArgumentCollection? = nil,
                createDeploymentDetails: JSONValue
    ) {
        self.helmDiffArguments = helmDiffArguments
        self.createDeploymentDetails = createDeploymentDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension TriggerDeploymentDryRunDetails: CustomStringConvertible {
    public var description: String { "TriggerDeploymentDryRunDetails()" }
}