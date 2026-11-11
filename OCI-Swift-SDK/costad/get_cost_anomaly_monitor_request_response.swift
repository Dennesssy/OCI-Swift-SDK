import Foundation

// MARK: - GetCostAnomalyMonitorRequest

public struct GetCostAnomalyMonitorRequest: Codable, Sendable {
    public var costAnomalyMonitorId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case costAnomalyMonitorId, opcRequestId
    }

    public init(
                costAnomalyMonitorId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.costAnomalyMonitorId = costAnomalyMonitorId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetCostAnomalyMonitorRequest: CustomStringConvertible {
    public var description: String { "GetCostAnomalyMonitorRequest()" }
}

// MARK: - GetCostAnomalyMonitorResponse

public struct GetCostAnomalyMonitorResponse: Codable, Sendable {
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

extension GetCostAnomalyMonitorResponse: CustomStringConvertible {
    public var description: String { "GetCostAnomalyMonitorResponse()" }
}