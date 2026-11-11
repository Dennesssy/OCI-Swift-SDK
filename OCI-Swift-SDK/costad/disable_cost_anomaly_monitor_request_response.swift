import Foundation

// MARK: - DisableCostAnomalyMonitorRequest

public struct DisableCostAnomalyMonitorRequest: Codable, Sendable {
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

extension DisableCostAnomalyMonitorRequest: CustomStringConvertible {
    public var description: String { "DisableCostAnomalyMonitorRequest()" }
}

// MARK: - DisableCostAnomalyMonitorResponse

public struct DisableCostAnomalyMonitorResponse: Codable, Sendable {
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

extension DisableCostAnomalyMonitorResponse: CustomStringConvertible {
    public var description: String { "DisableCostAnomalyMonitorResponse()" }
}