import Foundation

// MARK: - UpdateDelegationControlRequest

public struct UpdateDelegationControlRequest: Codable, Sendable {
    public var delegationControlId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateDelegationControlDetails: UpdateDelegationControlDetails?

    private enum CodingKeys: String, CodingKey {
        case delegationControlId, ifMatch, opcRequestId, updateDelegationControlDetails
    }

    public init(
                delegationControlId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateDelegationControlDetails: UpdateDelegationControlDetails? = nil
    ) {
        self.delegationControlId = delegationControlId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateDelegationControlDetails = updateDelegationControlDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateDelegationControlRequest: CustomStringConvertible {
    public var description: String { "UpdateDelegationControlRequest()" }
}

// MARK: - UpdateDelegationControlResponse

public struct UpdateDelegationControlResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcWorkRequestId: String?
    public var contentLocation: String?
    public var etag: String?
    public var delegationControl: DelegationControl?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcWorkRequestId, contentLocation, etag, delegationControl
    }

    public init(
                opcRequestId: String? = nil,
                opcWorkRequestId: String? = nil,
                contentLocation: String? = nil,
                etag: String? = nil,
                delegationControl: DelegationControl? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcWorkRequestId = opcWorkRequestId
        self.contentLocation = contentLocation
        self.etag = etag
        self.delegationControl = delegationControl
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateDelegationControlResponse: CustomStringConvertible {
    public var description: String { "UpdateDelegationControlResponse()" }
}