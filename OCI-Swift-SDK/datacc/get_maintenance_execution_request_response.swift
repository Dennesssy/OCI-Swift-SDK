import Foundation

// MARK: - GetMaintenanceExecutionRequest

public struct GetMaintenanceExecutionRequest: Codable, Sendable {
    public var maintenanceExecutionId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case maintenanceExecutionId, opcRequestId
    }

    public init(
                maintenanceExecutionId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.maintenanceExecutionId = maintenanceExecutionId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetMaintenanceExecutionRequest: CustomStringConvertible {
    public var description: String { "GetMaintenanceExecutionRequest()" }
}

// MARK: - GetMaintenanceExecutionResponse

public struct GetMaintenanceExecutionResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var etag: String?
    public var location: String?
    public var maintenanceExecution: MaintenanceExecution?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, etag, location, maintenanceExecution
    }

    public init(
                opcRequestId: String? = nil,
                etag: String? = nil,
                location: String? = nil,
                maintenanceExecution: MaintenanceExecution? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.etag = etag
        self.location = location
        self.maintenanceExecution = maintenanceExecution
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetMaintenanceExecutionResponse: CustomStringConvertible {
    public var description: String { "GetMaintenanceExecutionResponse()" }
}