import Foundation

// MARK: - RescheduleMaintenanceRunRequest

public struct RescheduleMaintenanceRunRequest: Codable, Sendable {
    public var maintenanceRunId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var rescheduleMaintenanceRunDetails: RescheduleMaintenanceRunDetails?

    private enum CodingKeys: String, CodingKey {
        case maintenanceRunId, ifMatch, opcRequestId, rescheduleMaintenanceRunDetails
    }

    public init(
                maintenanceRunId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                rescheduleMaintenanceRunDetails: RescheduleMaintenanceRunDetails? = nil
    ) {
        self.maintenanceRunId = maintenanceRunId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.rescheduleMaintenanceRunDetails = rescheduleMaintenanceRunDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RescheduleMaintenanceRunRequest: CustomStringConvertible {
    public var description: String { "RescheduleMaintenanceRunRequest()" }
}

// MARK: - RescheduleMaintenanceRunResponse

public struct RescheduleMaintenanceRunResponse: Codable, Sendable {
    public var opcWorkRequestId: String?
    public var opcRequestId: String?
    public var etag: String?
    public var location: String?
    public var maintenanceRun: MaintenanceRun?

    private enum CodingKeys: String, CodingKey {
        case opcWorkRequestId, opcRequestId, etag, location, maintenanceRun
    }

    public init(
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil,
                etag: String? = nil,
                location: String? = nil,
                maintenanceRun: MaintenanceRun? = nil
    ) {
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
        self.etag = etag
        self.location = location
        self.maintenanceRun = maintenanceRun
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RescheduleMaintenanceRunResponse: CustomStringConvertible {
    public var description: String { "RescheduleMaintenanceRunResponse()" }
}