import Foundation

// MARK: - GetMonitorResultRequest

public struct GetMonitorResultRequest: Codable, Sendable {
    public var apmDomainId: String?
    public var monitorId: String?
    public var vantagePoint: String?
    public var resultType: String?
    public var resultContentType: String?
    public var executionTime: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case apmDomainId, monitorId, vantagePoint, resultType, resultContentType, executionTime, opcRequestId
    }

    public init(
                apmDomainId: String? = nil,
                monitorId: String? = nil,
                vantagePoint: String? = nil,
                resultType: String? = nil,
                resultContentType: String? = nil,
                executionTime: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.apmDomainId = apmDomainId
        self.monitorId = monitorId
        self.vantagePoint = vantagePoint
        self.resultType = resultType
        self.resultContentType = resultContentType
        self.executionTime = executionTime
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetMonitorResultRequest: CustomStringConvertible {
    public var description: String { "GetMonitorResultRequest()" }
}

// MARK: - GetMonitorResultResponse

public struct GetMonitorResultResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var monitorResult: MonitorResult?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, monitorResult
    }

    public init(
                opcRequestId: String? = nil,
                monitorResult: MonitorResult? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.monitorResult = monitorResult
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetMonitorResultResponse: CustomStringConvertible {
    public var description: String { "GetMonitorResultResponse()" }
}