import Foundation

// MARK: - EnableCostAnomalyMonitorRequest

public struct EnableCostAnomalyMonitorRequest: Codable, Sendable {
    public var costAnomalyMonitorId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case costAnomalyMonitorId, ifMatch, opcRequestId
    }

    public init(
                costAnomalyMonitorId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.costAnomalyMonitorId = costAnomalyMonitorId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension EnableCostAnomalyMonitorRequest: CustomStringConvertible {
    public var description: String { "EnableCostAnomalyMonitorRequest()" }
}

// MARK: - EnableCostAnomalyMonitorResponse

public struct EnableCostAnomalyMonitorResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var costAnomalyMonitor: CostAnomalyMonitor?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, costAnomalyMonitor
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                costAnomalyMonitor: CostAnomalyMonitor? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.costAnomalyMonitor = costAnomalyMonitor
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension EnableCostAnomalyMonitorResponse: CustomStringConvertible {
    public var description: String { "EnableCostAnomalyMonitorResponse()" }
}