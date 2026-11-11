import Foundation

// MARK: - CreateCostAnomalyMonitorRequest

public struct CreateCostAnomalyMonitorRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var createCostAnomalyMonitorDetails: CreateCostAnomalyMonitorDetails?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, createCostAnomalyMonitorDetails
    }

    public init(
                opcRequestId: String? = nil,
                createCostAnomalyMonitorDetails: CreateCostAnomalyMonitorDetails? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.createCostAnomalyMonitorDetails = createCostAnomalyMonitorDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateCostAnomalyMonitorRequest: CustomStringConvertible {
    public var description: String { "CreateCostAnomalyMonitorRequest()" }
}

// MARK: - CreateCostAnomalyMonitorResponse

public struct CreateCostAnomalyMonitorResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var etag: String?
    public var costAnomalyMonitor: CostAnomalyMonitor?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, etag, costAnomalyMonitor
    }

    public init(
                opcRequestId: String? = nil,
                etag: String? = nil,
                costAnomalyMonitor: CostAnomalyMonitor? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.etag = etag
        self.costAnomalyMonitor = costAnomalyMonitor
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateCostAnomalyMonitorResponse: CustomStringConvertible {
    public var description: String { "CreateCostAnomalyMonitorResponse()" }
}