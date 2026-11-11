import Foundation

// MARK: - ApprovePrivilegedApiRequestRequest

public struct ApprovePrivilegedApiRequestRequest: Codable, Sendable {
    public var privilegedApiRequestId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var approvePrivilegedApiRequestDetails: ApprovePrivilegedApiRequestDetails?

    private enum CodingKeys: String, CodingKey {
        case privilegedApiRequestId, ifMatch, opcRequestId, approvePrivilegedApiRequestDetails
    }

    public init(
                privilegedApiRequestId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                approvePrivilegedApiRequestDetails: ApprovePrivilegedApiRequestDetails? = nil
    ) {
        self.privilegedApiRequestId = privilegedApiRequestId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.approvePrivilegedApiRequestDetails = approvePrivilegedApiRequestDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ApprovePrivilegedApiRequestRequest: CustomStringConvertible {
    public var description: String { "ApprovePrivilegedApiRequestRequest()" }
}

// MARK: - ApprovePrivilegedApiRequestResponse

public struct ApprovePrivilegedApiRequestResponse: Codable, Sendable {
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

extension ApprovePrivilegedApiRequestResponse: CustomStringConvertible {
    public var description: String { "ApprovePrivilegedApiRequestResponse()" }
}