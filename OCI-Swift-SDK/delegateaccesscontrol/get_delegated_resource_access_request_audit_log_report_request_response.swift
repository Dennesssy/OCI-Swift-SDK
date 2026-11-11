import Foundation

// MARK: - GetDelegatedResourceAccessRequestAuditLogReportRequest

public struct GetDelegatedResourceAccessRequestAuditLogReportRequest: Codable, Sendable {
    public var delegatedResourceAccessRequestId: String?
    public var isProcessTreeEnabled: Bool?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case delegatedResourceAccessRequestId, isProcessTreeEnabled, opcRequestId
    }

    public init(
                delegatedResourceAccessRequestId: String? = nil,
                isProcessTreeEnabled: Bool? = nil,
                opcRequestId: String? = nil
    ) {
        self.delegatedResourceAccessRequestId = delegatedResourceAccessRequestId
        self.isProcessTreeEnabled = isProcessTreeEnabled
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetDelegatedResourceAccessRequestAuditLogReportRequest: CustomStringConvertible {
    public var description: String { "GetDelegatedResourceAccessRequestAuditLogReportRequest()" }
}

// MARK: - GetDelegatedResourceAccessRequestAuditLogReportResponse

public struct GetDelegatedResourceAccessRequestAuditLogReportResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var delegatedResourceAccessRequestAuditLogReport: DelegatedResourceAccessRequestAuditLogReport?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, delegatedResourceAccessRequestAuditLogReport
    }

    public init(
                opcRequestId: String? = nil,
                delegatedResourceAccessRequestAuditLogReport: DelegatedResourceAccessRequestAuditLogReport? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.delegatedResourceAccessRequestAuditLogReport = delegatedResourceAccessRequestAuditLogReport
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetDelegatedResourceAccessRequestAuditLogReportResponse: CustomStringConvertible {
    public var description: String { "GetDelegatedResourceAccessRequestAuditLogReportResponse()" }
}