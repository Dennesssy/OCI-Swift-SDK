import Foundation

// MARK: - RejectPrivilegedApiRequestRequest

public struct RejectPrivilegedApiRequestRequest: Codable, Sendable {
    public var privilegedApiRequestId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var rejectPrivilegedApiRequestDetails: RejectPrivilegedApiRequestDetails?

    private enum CodingKeys: String, CodingKey {
        case privilegedApiRequestId, ifMatch, opcRequestId, rejectPrivilegedApiRequestDetails
    }

    public init(
                privilegedApiRequestId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                rejectPrivilegedApiRequestDetails: RejectPrivilegedApiRequestDetails? = nil
    ) {
        self.privilegedApiRequestId = privilegedApiRequestId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.rejectPrivilegedApiRequestDetails = rejectPrivilegedApiRequestDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RejectPrivilegedApiRequestRequest: CustomStringConvertible {
    public var description: String { "RejectPrivilegedApiRequestRequest()" }
}

// MARK: - RejectPrivilegedApiRequestResponse

public struct RejectPrivilegedApiRequestResponse: Codable, Sendable {
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

extension RejectPrivilegedApiRequestResponse: CustomStringConvertible {
    public var description: String { "RejectPrivilegedApiRequestResponse()" }
}