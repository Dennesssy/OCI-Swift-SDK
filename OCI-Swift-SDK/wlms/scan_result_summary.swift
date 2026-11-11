import Foundation

// MARK: - ScanResultSummary

public struct ScanResultSummary: Codable, Sendable {

    public var wlsDomainId: String?
    public var serverName: String?
    public var timeOfServerCheck: Date?
    public var serverCheckStatus: ScanResultSummaryServerCheckStatusEnum
    public var serverCheckName: String?
    public var serverCheckResult: String?
    public var serverCheckResultId: String?

    private enum CodingKeys: String, CodingKey {
        case wlsDomainId, serverName, timeOfServerCheck, serverCheckStatus, serverCheckName, serverCheckResult, serverCheckResultId
    }

    public init(
                wlsDomainId: String? = nil,
                serverName: String? = nil,
                timeOfServerCheck: Date? = nil,
                serverCheckStatus: ScanResultSummaryServerCheckStatusEnum,
                serverCheckName: String? = nil,
                serverCheckResult: String? = nil,
                serverCheckResultId: String? = nil
    ) {
        self.wlsDomainId = wlsDomainId
        self.serverName = serverName
        self.timeOfServerCheck = timeOfServerCheck
        self.serverCheckStatus = serverCheckStatus
        self.serverCheckName = serverCheckName
        self.serverCheckResult = serverCheckResult
        self.serverCheckResultId = serverCheckResultId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ScanResultSummary: CustomStringConvertible {
    public var description: String { "ScanResultSummary()" }
}