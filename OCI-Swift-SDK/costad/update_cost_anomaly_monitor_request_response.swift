import Foundation

// MARK: - UpdateCostAnomalyMonitorRequest

public struct UpdateCostAnomalyMonitorRequest: Codable, Sendable {
    public var costAnomalyMonitorId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateCostAnomalyMonitorDetails: UpdateCostAnomalyMonitorDetails?

    private enum CodingKeys: String, CodingKey {
        case costAnomalyMonitorId, ifMatch, opcRequestId, updateCostAnomalyMonitorDetails
    }

    public init(
                costAnomalyMonitorId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateCostAnomalyMonitorDetails: UpdateCostAnomalyMonitorDetails? = nil
    ) {
        self.costAnomalyMonitorId = costAnomalyMonitorId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateCostAnomalyMonitorDetails = updateCostAnomalyMonitorDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateCostAnomalyMonitorRequest: CustomStringConvertible {
    public var description: String { "UpdateCostAnomalyMonitorRequest()" }
}

// MARK: - UpdateCostAnomalyMonitorResponse

public struct UpdateCostAnomalyMonitorResponse: Codable, Sendable {
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

extension UpdateCostAnomalyMonitorResponse: CustomStringConvertible {
    public var description: String { "UpdateCostAnomalyMonitorResponse()" }
}