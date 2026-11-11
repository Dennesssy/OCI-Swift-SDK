import Foundation

// MARK: - GetDelegationControlRequest

public struct GetDelegationControlRequest: Codable, Sendable {
    public var delegationControlId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case delegationControlId, opcRequestId
    }

    public init(
                delegationControlId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.delegationControlId = delegationControlId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetDelegationControlRequest: CustomStringConvertible {
    public var description: String { "GetDelegationControlRequest()" }
}

// MARK: - GetDelegationControlResponse

public struct GetDelegationControlResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var delegationControl: DelegationControl?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, delegationControl
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                delegationControl: DelegationControl? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.delegationControl = delegationControl
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetDelegationControlResponse: CustomStringConvertible {
    public var description: String { "GetDelegationControlResponse()" }
}