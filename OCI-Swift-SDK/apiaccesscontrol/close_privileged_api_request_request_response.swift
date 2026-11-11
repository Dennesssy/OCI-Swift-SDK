import Foundation

// MARK: - ClosePrivilegedApiRequestRequest

public struct ClosePrivilegedApiRequestRequest: Codable, Sendable {
    public var privilegedApiRequestId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var closePrivilegedApiRequestDetails: ClosePrivilegedApiRequestDetails?

    private enum CodingKeys: String, CodingKey {
        case privilegedApiRequestId, ifMatch, opcRequestId, closePrivilegedApiRequestDetails
    }

    public init(
                privilegedApiRequestId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                closePrivilegedApiRequestDetails: ClosePrivilegedApiRequestDetails? = nil
    ) {
        self.privilegedApiRequestId = privilegedApiRequestId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.closePrivilegedApiRequestDetails = closePrivilegedApiRequestDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ClosePrivilegedApiRequestRequest: CustomStringConvertible {
    public var description: String { "ClosePrivilegedApiRequestRequest()" }
}

// MARK: - ClosePrivilegedApiRequestResponse

public struct ClosePrivilegedApiRequestResponse: Codable, Sendable {
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

extension ClosePrivilegedApiRequestResponse: CustomStringConvertible {
    public var description: String { "ClosePrivilegedApiRequestResponse()" }
}