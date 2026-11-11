import Foundation

// MARK: - PatchActivityDetails

public struct PatchActivityDetails: Codable, Sendable {

    public var deployOperationId: String?
    public var deployTaskId: String?
    public var deployStatus: PatchActivityDetailsDeployStatusEnum?
    public var updateOperationId: String?
    public var updateTaskId: String?
    public var updateStatus: PatchActivityDetailsUpdateStatusEnum?
    public var migrateListenerOperationId: String?
    public var migrateListenerTaskId: String?
    public var migrateListenerStatus: PatchActivityDetailsMigrateListenerStatusEnum?

    private enum CodingKeys: String, CodingKey {
        case deployOperationId, deployTaskId, deployStatus, updateOperationId, updateTaskId, updateStatus, migrateListenerOperationId, migrateListenerTaskId, migrateListenerStatus
    }

    public init(
                deployOperationId: String? = nil,
                deployTaskId: String? = nil,
                deployStatus: PatchActivityDetailsDeployStatusEnum? = nil,
                updateOperationId: String? = nil,
                updateTaskId: String? = nil,
                updateStatus: PatchActivityDetailsUpdateStatusEnum? = nil,
                migrateListenerOperationId: String? = nil,
                migrateListenerTaskId: String? = nil,
                migrateListenerStatus: PatchActivityDetailsMigrateListenerStatusEnum? = nil
    ) {
        self.deployOperationId = deployOperationId
        self.deployTaskId = deployTaskId
        self.deployStatus = deployStatus
        self.updateOperationId = updateOperationId
        self.updateTaskId = updateTaskId
        self.updateStatus = updateStatus
        self.migrateListenerOperationId = migrateListenerOperationId
        self.migrateListenerTaskId = migrateListenerTaskId
        self.migrateListenerStatus = migrateListenerStatus
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension PatchActivityDetails: CustomStringConvertible {
    public var description: String { "PatchActivityDetails()" }
}