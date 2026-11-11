import Foundation

// MARK: - UpdateMonitorRequest

public struct UpdateMonitorRequest: Codable, Sendable {
    public var apmDomainId: String?
    public var monitorId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateMonitorDetails: UpdateMonitorDetails?

    private enum CodingKeys: String, CodingKey {
        case apmDomainId, monitorId, ifMatch, opcRequestId, updateMonitorDetails
    }

    public init(
                apmDomainId: String? = nil,
                monitorId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateMonitorDetails: UpdateMonitorDetails? = nil
    ) {
        self.apmDomainId = apmDomainId
        self.monitorId = monitorId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateMonitorDetails = updateMonitorDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateMonitorRequest: CustomStringConvertible {
    public var description: String { "UpdateMonitorRequest()" }
}

// MARK: - UpdateMonitorResponse

public struct UpdateMonitorResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var monitor: Monitor?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, monitor
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                monitor: Monitor? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.monitor = monitor
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateMonitorResponse: CustomStringConvertible {
    public var description: String { "UpdateMonitorResponse()" }
}