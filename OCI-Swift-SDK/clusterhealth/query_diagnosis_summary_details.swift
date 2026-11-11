import Foundation

// MARK: - QueryDiagnosisSummaryDetails

public struct QueryDiagnosisSummaryDetails: Codable, Sendable {

    public var instanceIds: [String]
    public var testType: QueryDiagnosisSummaryDetailsTestTypeEnum?
    public var timeTestRunIntervalStart: Date?
    public var timeTestRunIntervalEnd: Date?

    private enum CodingKeys: String, CodingKey {
        case instanceIds, testType, timeTestRunIntervalStart, timeTestRunIntervalEnd
    }

    public init(
                instanceIds: [String],
                testType: QueryDiagnosisSummaryDetailsTestTypeEnum? = nil,
                timeTestRunIntervalStart: Date? = nil,
                timeTestRunIntervalEnd: Date? = nil
    ) {
        self.instanceIds = instanceIds
        self.testType = testType
        self.timeTestRunIntervalStart = timeTestRunIntervalStart
        self.timeTestRunIntervalEnd = timeTestRunIntervalEnd
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension QueryDiagnosisSummaryDetails: CustomStringConvertible {
    public var description: String { "QueryDiagnosisSummaryDetails()" }
}