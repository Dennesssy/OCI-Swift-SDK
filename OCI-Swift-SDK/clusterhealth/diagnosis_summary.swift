import Foundation

// MARK: - DiagnosisSummary

public struct DiagnosisSummary: Codable, Sendable {

    public var testType: DiagnosisSummaryTestTypeEnum
    public var hostId: String?
    public var instanceId: String?
    public var healthCheckKey: String?
    public var timeTestRan: Date?
    public var timeGenerated: Date?
    public var failedTests: [FailedTest]?
    public var health: DiagnosisSummaryHealthEnum?

    private enum CodingKeys: String, CodingKey {
        case testType, hostId, instanceId, healthCheckKey, timeTestRan, timeGenerated, failedTests, health
    }

    public init(
                testType: DiagnosisSummaryTestTypeEnum,
                hostId: String? = nil,
                instanceId: String? = nil,
                healthCheckKey: String? = nil,
                timeTestRan: Date? = nil,
                timeGenerated: Date? = nil,
                failedTests: [FailedTest]? = nil,
                health: DiagnosisSummaryHealthEnum? = nil
    ) {
        self.testType = testType
        self.hostId = hostId
        self.instanceId = instanceId
        self.healthCheckKey = healthCheckKey
        self.timeTestRan = timeTestRan
        self.timeGenerated = timeGenerated
        self.failedTests = failedTests
        self.health = health
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DiagnosisSummary: CustomStringConvertible {
    public var description: String { "DiagnosisSummary()" }
}