import Foundation

// MARK: - DeleteMonitoredRegionRequest

public struct DeleteMonitoredRegionRequest: Codable, Sendable {
    public var monitoredRegionId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case monitoredRegionId, ifMatch, opcRequestId
    }

    public init(
                monitoredRegionId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.monitoredRegionId = monitoredRegionId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteMonitoredRegionRequest: CustomStringConvertible {
    public var description: String { "DeleteMonitoredRegionRequest()" }
}

// MARK: - DeleteMonitoredRegionResponse

public struct DeleteMonitoredRegionResponse: Codable, Sendable {
    public var opcWorkRequestId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case opcWorkRequestId, opcRequestId
    }

    public init(
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteMonitoredRegionResponse: CustomStringConvertible {
    public var description: String { "DeleteMonitoredRegionResponse()" }
}