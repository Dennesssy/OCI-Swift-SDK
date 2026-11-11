import Foundation

// MARK: - GetMonitoredRegionRequest

public struct GetMonitoredRegionRequest: Codable, Sendable {
    public var monitoredRegionId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case monitoredRegionId, opcRequestId
    }

    public init(
                monitoredRegionId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.monitoredRegionId = monitoredRegionId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetMonitoredRegionRequest: CustomStringConvertible {
    public var description: String { "GetMonitoredRegionRequest()" }
}

// MARK: - GetMonitoredRegionResponse

public struct GetMonitoredRegionResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var monitoredRegion: MonitoredRegion?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, monitoredRegion
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                monitoredRegion: MonitoredRegion? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.monitoredRegion = monitoredRegion
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetMonitoredRegionResponse: CustomStringConvertible {
    public var description: String { "GetMonitoredRegionResponse()" }
}