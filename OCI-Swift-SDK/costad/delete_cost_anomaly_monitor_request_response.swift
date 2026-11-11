import Foundation

// MARK: - DeleteCostAnomalyMonitorRequest

public struct DeleteCostAnomalyMonitorRequest: Codable, Sendable {
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

extension DeleteCostAnomalyMonitorRequest: CustomStringConvertible {
    public var description: String { "DeleteCostAnomalyMonitorRequest()" }
}

// MARK: - DeleteCostAnomalyMonitorResponse

public struct DeleteCostAnomalyMonitorResponse: Codable, Sendable {
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId
    }

    public init(
                opcRequestId: String? = nil
    ) {
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteCostAnomalyMonitorResponse: CustomStringConvertible {
    public var description: String { "DeleteCostAnomalyMonitorResponse()" }
}