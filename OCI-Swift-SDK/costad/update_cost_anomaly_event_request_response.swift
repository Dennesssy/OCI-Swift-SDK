import Foundation

// MARK: - UpdateCostAnomalyEventRequest

public struct UpdateCostAnomalyEventRequest: Codable, Sendable {
    public var costAnomalyEventId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateCostAnomalyEventDetails: UpdateCostAnomalyEventDetails?

    private enum CodingKeys: String, CodingKey {
        case costAnomalyEventId, ifMatch, opcRequestId, updateCostAnomalyEventDetails
    }

    public init(
                costAnomalyEventId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateCostAnomalyEventDetails: UpdateCostAnomalyEventDetails? = nil
    ) {
        self.costAnomalyEventId = costAnomalyEventId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateCostAnomalyEventDetails = updateCostAnomalyEventDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateCostAnomalyEventRequest: CustomStringConvertible {
    public var description: String { "UpdateCostAnomalyEventRequest()" }
}

// MARK: - UpdateCostAnomalyEventResponse

public struct UpdateCostAnomalyEventResponse: Codable, Sendable {
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

extension UpdateCostAnomalyEventResponse: CustomStringConvertible {
    public var description: String { "UpdateCostAnomalyEventResponse()" }
}