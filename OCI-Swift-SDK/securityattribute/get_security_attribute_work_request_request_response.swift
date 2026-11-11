import Foundation

// MARK: - GetSecurityAttributeWorkRequestRequest

public struct GetSecurityAttributeWorkRequestRequest: Codable, Sendable {
    public var workRequestId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case workRequestId, opcRequestId
    }

    public init(
                workRequestId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.workRequestId = workRequestId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetSecurityAttributeWorkRequestRequest: CustomStringConvertible {
    public var description: String { "GetSecurityAttributeWorkRequestRequest()" }
}

// MARK: - GetSecurityAttributeWorkRequestResponse

public struct GetSecurityAttributeWorkRequestResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var retryAfter: Float?
    public var securityAttributeWorkRequest: SecurityAttributeWorkRequest?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, retryAfter, securityAttributeWorkRequest
    }

    public init(
                opcRequestId: String? = nil,
                retryAfter: Float? = nil,
                securityAttributeWorkRequest: SecurityAttributeWorkRequest? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.retryAfter = retryAfter
        self.securityAttributeWorkRequest = securityAttributeWorkRequest
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetSecurityAttributeWorkRequestResponse: CustomStringConvertible {
    public var description: String { "GetSecurityAttributeWorkRequestResponse()" }
}