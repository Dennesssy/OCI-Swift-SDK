import Foundation

// MARK: - GetCostAnomalyEventRequest

public struct GetCostAnomalyEventRequest: Codable, Sendable {
    public var costAnomalyEventId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case costAnomalyEventId, opcRequestId
    }

    public init(
                costAnomalyEventId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.costAnomalyEventId = costAnomalyEventId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetCostAnomalyEventRequest: CustomStringConvertible {
    public var description: String { "GetCostAnomalyEventRequest()" }
}

// MARK: - GetCostAnomalyEventResponse

public struct GetCostAnomalyEventResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var etag: String?
    public var costAnomalyEvent: CostAnomalyEvent?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, etag, costAnomalyEvent
    }

    public init(
                opcRequestId: String? = nil,
                etag: String? = nil,
                costAnomalyEvent: CostAnomalyEvent? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.etag = etag
        self.costAnomalyEvent = costAnomalyEvent
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetCostAnomalyEventResponse: CustomStringConvertible {
    public var description: String { "GetCostAnomalyEventResponse()" }
}