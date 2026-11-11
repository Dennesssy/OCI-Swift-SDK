import Foundation

// MARK: - MaintenanceWindowMetadataDetails

public struct MaintenanceWindowMetadataDetails: Codable, Sendable {

    public var activeOrNextPlannedMaintenance: DateAndTime?
    public var finishedMaintenance: DateAndTime?
    public var isMaintenanceInProgress: Bool?

    private enum CodingKeys: String, CodingKey {
        case activeOrNextPlannedMaintenance, finishedMaintenance, isMaintenanceInProgress
    }

    public init(
                activeOrNextPlannedMaintenance: DateAndTime? = nil,
                finishedMaintenance: DateAndTime? = nil,
                isMaintenanceInProgress: Bool? = nil
    ) {
        self.activeOrNextPlannedMaintenance = activeOrNextPlannedMaintenance
        self.finishedMaintenance = finishedMaintenance
        self.isMaintenanceInProgress = isMaintenanceInProgress
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension MaintenanceWindowMetadataDetails: CustomStringConvertible {
    public var description: String { "MaintenanceWindowMetadataDetails()" }
}