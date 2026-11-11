import Foundation

// MARK: - DelegatedResourceAccessRequestAuditLogReport

public struct DelegatedResourceAccessRequestAuditLogReport: Codable, Sendable {

    public var auditReportStatus: AuditReportStatusEnum
    public var report: String?
    public var processTree: String?
    public var timeReportGenerated: Date?

    private enum CodingKeys: String, CodingKey {
        case auditReportStatus, report, processTree, timeReportGenerated
    }

    public init(
                auditReportStatus: AuditReportStatusEnum,
                report: String? = nil,
                processTree: String? = nil,
                timeReportGenerated: Date? = nil
    ) {
        self.auditReportStatus = auditReportStatus
        self.report = report
        self.processTree = processTree
        self.timeReportGenerated = timeReportGenerated
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DelegatedResourceAccessRequestAuditLogReport: CustomStringConvertible {
    public var description: String { "DelegatedResourceAccessRequestAuditLogReport()" }
}