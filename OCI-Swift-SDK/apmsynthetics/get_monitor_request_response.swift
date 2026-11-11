import Foundation

// MARK: - GetMonitorRequest

public struct GetMonitorRequest: Codable, Sendable {
    public var apmDomainId: String?
    public var monitorId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case apmDomainId, monitorId, opcRequestId
    }

    public init(
                apmDomainId: String? = nil,
                monitorId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.apmDomainId = apmDomainId
        self.monitorId = monitorId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetMonitorRequest: CustomStringConvertible {
    public var description: String { "GetMonitorRequest()" }
}

// MARK: - GetMonitorResponse

public struct GetMonitorResponse: Codable, Sendable {
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

extension GetMonitorResponse: CustomStringConvertible {
    public var description: String { "GetMonitorResponse()" }
}