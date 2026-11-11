import Foundation

// MARK: - PatchComplianceDetails

public struct PatchComplianceDetails: Codable, Sendable {

    public var patchComplianceStatus: PatchComplianceDetailsPatchComplianceStatusEnum?
    public var patchComplianceVersion: String?

    private enum CodingKeys: String, CodingKey {
        case patchComplianceStatus, patchComplianceVersion
    }

    public init(
                patchComplianceStatus: PatchComplianceDetailsPatchComplianceStatusEnum? = nil,
                patchComplianceVersion: String? = nil
    ) {
        self.patchComplianceStatus = patchComplianceStatus
        self.patchComplianceVersion = patchComplianceVersion
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension PatchComplianceDetails: CustomStringConvertible {
    public var description: String { "PatchComplianceDetails()" }
}