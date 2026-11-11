import Foundation

// MARK: - DeleteMonitorRequest

public struct DeleteMonitorRequest: Codable, Sendable {
    public var apmDomainId: String?
    public var monitorId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case apmDomainId, monitorId, ifMatch, opcRequestId
    }

    public init(
                apmDomainId: String? = nil,
                monitorId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.apmDomainId = apmDomainId
        self.monitorId = monitorId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteMonitorRequest: CustomStringConvertible {
    public var description: String { "DeleteMonitorRequest()" }
}

// MARK: - DeleteMonitorResponse

public struct DeleteMonitorResponse: Codable, Sendable {
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

extension DeleteMonitorResponse: CustomStringConvertible {
    public var description: String { "DeleteMonitorResponse()" }
}