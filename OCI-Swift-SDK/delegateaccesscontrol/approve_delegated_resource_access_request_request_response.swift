import Foundation

// MARK: - ApproveDelegatedResourceAccessRequestRequest

public struct ApproveDelegatedResourceAccessRequestRequest: Codable, Sendable {
    public var delegatedResourceAccessRequestId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var approveDelegatedResourceAccessRequestDetails: ApproveDelegatedResourceAccessRequestDetails?

    private enum CodingKeys: String, CodingKey {
        case delegatedResourceAccessRequestId, ifMatch, opcRequestId, approveDelegatedResourceAccessRequestDetails
    }

    public init(
                delegatedResourceAccessRequestId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                approveDelegatedResourceAccessRequestDetails: ApproveDelegatedResourceAccessRequestDetails? = nil
    ) {
        self.delegatedResourceAccessRequestId = delegatedResourceAccessRequestId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.approveDelegatedResourceAccessRequestDetails = approveDelegatedResourceAccessRequestDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ApproveDelegatedResourceAccessRequestRequest: CustomStringConvertible {
    public var description: String { "ApproveDelegatedResourceAccessRequestRequest()" }
}

// MARK: - ApproveDelegatedResourceAccessRequestResponse

public struct ApproveDelegatedResourceAccessRequestResponse: Codable, Sendable {
    public var opcWorkRequestId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case opcWorkRequestId, opcRequestId
    }

    public init(
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ApproveDelegatedResourceAccessRequestResponse: CustomStringConvertible {
    public var description: String { "ApproveDelegatedResourceAccessRequestResponse()" }
}