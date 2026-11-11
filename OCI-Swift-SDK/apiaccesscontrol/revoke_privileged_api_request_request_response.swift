import Foundation

// MARK: - RevokePrivilegedApiRequestRequest

public struct RevokePrivilegedApiRequestRequest: Codable, Sendable {
    public var privilegedApiRequestId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var revokePrivilegedApiRequestDetails: RevokePrivilegedApiRequestDetails?

    private enum CodingKeys: String, CodingKey {
        case privilegedApiRequestId, ifMatch, opcRequestId, revokePrivilegedApiRequestDetails
    }

    public init(
                privilegedApiRequestId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                revokePrivilegedApiRequestDetails: RevokePrivilegedApiRequestDetails? = nil
    ) {
        self.privilegedApiRequestId = privilegedApiRequestId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.revokePrivilegedApiRequestDetails = revokePrivilegedApiRequestDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RevokePrivilegedApiRequestRequest: CustomStringConvertible {
    public var description: String { "RevokePrivilegedApiRequestRequest()" }
}

// MARK: - RevokePrivilegedApiRequestResponse

public struct RevokePrivilegedApiRequestResponse: Codable, Sendable {
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

extension RevokePrivilegedApiRequestResponse: CustomStringConvertible {
    public var description: String { "RevokePrivilegedApiRequestResponse()" }
}