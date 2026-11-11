import Foundation

// MARK: - pullrequestactivitysummary

public struct pullrequestactivitysummary: Codable, Sendable {

    public var jsonData: Data?
    public var id: String?
    public var principal: PrincipalDetails?
    public var pullRequestId: String?
    public var timeOccurred: Date?
    public var activityType: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, id, principal, pullRequestId, timeOccurred, activityType
    }

    public init(
                jsonData: Data? = nil,
                id: String? = nil,
                principal: PrincipalDetails? = nil,
                pullRequestId: String? = nil,
                timeOccurred: Date? = nil,
                activityType: String? = nil
    ) {
        self.jsonData = jsonData
        self.id = id
        self.principal = principal
        self.pullRequestId = pullRequestId
        self.timeOccurred = timeOccurred
        self.activityType = activityType
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension pullrequestactivitysummary: CustomStringConvertible {
    public var description: String { "pullrequestactivitysummary()" }
}