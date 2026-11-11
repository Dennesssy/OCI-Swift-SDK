import Foundation

// MARK: - RejectDelegatedResourceAccessRequestRequest

public struct RejectDelegatedResourceAccessRequestRequest: Codable, Sendable {
    public var delegatedResourceAccessRequestId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var rejectDelegatedResourceAccessRequestDetails: RejectDelegatedResourceAccessRequestDetails?

    private enum CodingKeys: String, CodingKey {
        case delegatedResourceAccessRequestId, ifMatch, opcRequestId, rejectDelegatedResourceAccessRequestDetails
    }

    public init(
                delegatedResourceAccessRequestId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                rejectDelegatedResourceAccessRequestDetails: RejectDelegatedResourceAccessRequestDetails? = nil
    ) {
        self.delegatedResourceAccessRequestId = delegatedResourceAccessRequestId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.rejectDelegatedResourceAccessRequestDetails = rejectDelegatedResourceAccessRequestDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RejectDelegatedResourceAccessRequestRequest: CustomStringConvertible {
    public var description: String { "RejectDelegatedResourceAccessRequestRequest()" }
}

// MARK: - RejectDelegatedResourceAccessRequestResponse

public struct RejectDelegatedResourceAccessRequestResponse: Codable, Sendable {
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

extension RejectDelegatedResourceAccessRequestResponse: CustomStringConvertible {
    public var description: String { "RejectDelegatedResourceAccessRequestResponse()" }
}