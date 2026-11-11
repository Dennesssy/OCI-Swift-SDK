import Foundation

// MARK: - GetMaintenanceRunRequest

public struct GetMaintenanceRunRequest: Codable, Sendable {
    public var maintenanceRunId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case maintenanceRunId, opcRequestId
    }

    public init(
                maintenanceRunId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.maintenanceRunId = maintenanceRunId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetMaintenanceRunRequest: CustomStringConvertible {
    public var description: String { "GetMaintenanceRunRequest()" }
}

// MARK: - GetMaintenanceRunResponse

public struct GetMaintenanceRunResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var etag: String?
    public var location: String?
    public var maintenanceRun: MaintenanceRun?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, etag, location, maintenanceRun
    }

    public init(
                opcRequestId: String? = nil,
                etag: String? = nil,
                location: String? = nil,
                maintenanceRun: MaintenanceRun? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.etag = etag
        self.location = location
        self.maintenanceRun = maintenanceRun
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetMaintenanceRunResponse: CustomStringConvertible {
    public var description: String { "GetMaintenanceRunResponse()" }
}