import Foundation

// MARK: - UpdateMaintenanceRunRequest

public struct UpdateMaintenanceRunRequest: Codable, Sendable {
    public var maintenanceRunId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateMaintenanceRunDetails: UpdateMaintenanceRunDetails?

    private enum CodingKeys: String, CodingKey {
        case maintenanceRunId, ifMatch, opcRequestId, updateMaintenanceRunDetails
    }

    public init(
                maintenanceRunId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateMaintenanceRunDetails: UpdateMaintenanceRunDetails? = nil
    ) {
        self.maintenanceRunId = maintenanceRunId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateMaintenanceRunDetails = updateMaintenanceRunDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateMaintenanceRunRequest: CustomStringConvertible {
    public var description: String { "UpdateMaintenanceRunRequest()" }
}

// MARK: - UpdateMaintenanceRunResponse

public struct UpdateMaintenanceRunResponse: Codable, Sendable {
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

extension UpdateMaintenanceRunResponse: CustomStringConvertible {
    public var description: String { "UpdateMaintenanceRunResponse()" }
}