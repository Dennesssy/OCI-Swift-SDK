import Foundation

// MARK: - MonitorResult

public struct MonitorResult: Codable, Sendable {

    public var resultContentType: String?
    public var resultType: String?
    public var resultDataSet: [MonitorResultData]?
    public var monitorId: String?
    public var vantagePoint: String?
    public var executionTime: String?

    private enum CodingKeys: String, CodingKey {
        case resultContentType, resultType, resultDataSet, monitorId, vantagePoint, executionTime
    }

    public init(
                resultContentType: String? = nil,
                resultType: String? = nil,
                resultDataSet: [MonitorResultData]? = nil,
                monitorId: String? = nil,
                vantagePoint: String? = nil,
                executionTime: String? = nil
    ) {
        self.resultContentType = resultContentType
        self.resultType = resultType
        self.resultDataSet = resultDataSet
        self.monitorId = monitorId
        self.vantagePoint = vantagePoint
        self.executionTime = executionTime
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension MonitorResult: CustomStringConvertible {
    public var description: String { "MonitorResult()" }
}