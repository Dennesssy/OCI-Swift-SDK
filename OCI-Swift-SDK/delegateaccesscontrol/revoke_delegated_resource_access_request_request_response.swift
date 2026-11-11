import Foundation

// MARK: - RevokeDelegatedResourceAccessRequestRequest

public struct RevokeDelegatedResourceAccessRequestRequest: Codable, Sendable {
    public var delegatedResourceAccessRequestId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var revokeDelegatedResourceAccessRequestDetails: RevokeDelegatedResourceAccessRequestDetails?

    private enum CodingKeys: String, CodingKey {
        case delegatedResourceAccessRequestId, ifMatch, opcRequestId, revokeDelegatedResourceAccessRequestDetails
    }

    public init(
                delegatedResourceAccessRequestId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                revokeDelegatedResourceAccessRequestDetails: RevokeDelegatedResourceAccessRequestDetails? = nil
    ) {
        self.delegatedResourceAccessRequestId = delegatedResourceAccessRequestId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.revokeDelegatedResourceAccessRequestDetails = revokeDelegatedResourceAccessRequestDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RevokeDelegatedResourceAccessRequestRequest: CustomStringConvertible {
    public var description: String { "RevokeDelegatedResourceAccessRequestRequest()" }
}

// MARK: - RevokeDelegatedResourceAccessRequestResponse

public struct RevokeDelegatedResourceAccessRequestResponse: Codable, Sendable {
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

extension RevokeDelegatedResourceAccessRequestResponse: CustomStringConvertible {
    public var description: String { "RevokeDelegatedResourceAccessRequestResponse()" }
}