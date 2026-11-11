import Foundation
import OCICommon

// MARK: - CreatePrivilegedApiRequestDetails

public struct CreatePrivilegedApiRequestDetails: Codable, Sendable {

    public var reasonSummary: String?
    public var compartmentId: String?
    public var resourceId: String?
    public var privilegedOperationList: [PrivilegedApiRequestOperationDetails]
    public var subResourceNameList: [String]?
    public var notificationTopicId: String?
    public var reasonDetail: String?
    public var severity: PrivilegedApiRequestSeverityEnum?
    public var durationInHrs: Int?
    public var ticketNumbers: [String]?
    public var timeRequestedForFutureAccess: Date?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case reasonSummary, compartmentId, resourceId, privilegedOperationList, subResourceNameList, notificationTopicId, reasonDetail, severity, durationInHrs, ticketNumbers, timeRequestedForFutureAccess, freeformTags, definedTags
    }

    public init(
                reasonSummary: String? = nil,
                compartmentId: String? = nil,
                resourceId: String? = nil,
                privilegedOperationList: [PrivilegedApiRequestOperationDetails],
                subResourceNameList: [String]? = nil,
                notificationTopicId: String? = nil,
                reasonDetail: String? = nil,
                severity: PrivilegedApiRequestSeverityEnum? = nil,
                durationInHrs: Int? = nil,
                ticketNumbers: [String]? = nil,
                timeRequestedForFutureAccess: Date? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.reasonSummary = reasonSummary
        self.compartmentId = compartmentId
        self.resourceId = resourceId
        self.privilegedOperationList = privilegedOperationList
        self.subResourceNameList = subResourceNameList
        self.notificationTopicId = notificationTopicId
        self.reasonDetail = reasonDetail
        self.severity = severity
        self.durationInHrs = durationInHrs
        self.ticketNumbers = ticketNumbers
        self.timeRequestedForFutureAccess = timeRequestedForFutureAccess
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreatePrivilegedApiRequestDetails: CustomStringConvertible {
    public var description: String { "CreatePrivilegedApiRequestDetails()" }
}