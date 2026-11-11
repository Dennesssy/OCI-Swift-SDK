import Foundation
import OCICommon

// MARK: - DatabasesSummary

public struct DatabasesSummary: Codable, Sendable {

    public var databaseId: String?
    public var imageDetails: ImageDetails?
    public var patchComplianceDetails: PatchComplianceDetails?
    public var patchActivityDetails: PatchActivityDetails?
    public var freeformTags: [String: String]
    public var definedTags: [String: [String: JSONValue]]
    public var databaseName: String?
    public var databaseType: DatabasesSummaryDatabaseTypeEnum?
    public var release: String?
    public var releaseFullVersion: String?
    public var oracleHomePath: String?
    public var currentPatchWatermark: String?
    public var hostOrCluster: String?
    public var patchUser: String?
    public var sudoFilePath: String?
    public var additionalPatches: [AdditionalPatches]?
    public var vulnerabilitiesSummary: JSONValue?
    public var lifecycleState: DatabasesSummaryLifecycleStateEnum?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case databaseId, imageDetails, patchComplianceDetails, patchActivityDetails, freeformTags, definedTags, databaseName, databaseType, release, releaseFullVersion, oracleHomePath, currentPatchWatermark, hostOrCluster, patchUser, sudoFilePath, additionalPatches, vulnerabilitiesSummary, lifecycleState, systemTags
    }

    public init(
                databaseId: String? = nil,
                imageDetails: ImageDetails? = nil,
                patchComplianceDetails: PatchComplianceDetails? = nil,
                patchActivityDetails: PatchActivityDetails? = nil,
                freeformTags: [String: String],
                definedTags: [String: [String: JSONValue]],
                databaseName: String? = nil,
                databaseType: DatabasesSummaryDatabaseTypeEnum? = nil,
                release: String? = nil,
                releaseFullVersion: String? = nil,
                oracleHomePath: String? = nil,
                currentPatchWatermark: String? = nil,
                hostOrCluster: String? = nil,
                patchUser: String? = nil,
                sudoFilePath: String? = nil,
                additionalPatches: [AdditionalPatches]? = nil,
                vulnerabilitiesSummary: JSONValue? = nil,
                lifecycleState: DatabasesSummaryLifecycleStateEnum? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.databaseId = databaseId
        self.imageDetails = imageDetails
        self.patchComplianceDetails = patchComplianceDetails
        self.patchActivityDetails = patchActivityDetails
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.databaseName = databaseName
        self.databaseType = databaseType
        self.release = release
        self.releaseFullVersion = releaseFullVersion
        self.oracleHomePath = oracleHomePath
        self.currentPatchWatermark = currentPatchWatermark
        self.hostOrCluster = hostOrCluster
        self.patchUser = patchUser
        self.sudoFilePath = sudoFilePath
        self.additionalPatches = additionalPatches
        self.vulnerabilitiesSummary = vulnerabilitiesSummary
        self.lifecycleState = lifecycleState
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DatabasesSummary: CustomStringConvertible {
    public var description: String { "DatabasesSummary()" }
}