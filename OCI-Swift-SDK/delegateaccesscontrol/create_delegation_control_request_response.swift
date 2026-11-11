import Foundation

// MARK: - CreateDelegationControlRequest

public struct CreateDelegationControlRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var createDelegationControlDetails: CreateDelegationControlDetails?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, createDelegationControlDetails
    }

    public init(
                opcRequestId: String? = nil,
                createDelegationControlDetails: CreateDelegationControlDetails? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.createDelegationControlDetails = createDelegationControlDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateDelegationControlRequest: CustomStringConvertible {
    public var description: String { "CreateDelegationControlRequest()" }
}

// MARK: - CreateDelegationControlResponse

public struct CreateDelegationControlResponse: Codable, Sendable {
    public var opcWorkRequestId: String?
    public var opcRequestId: String?
    public var location: String?
    public var contentLocation: String?
    public var etag: String?
    public var delegationControl: DelegationControl?

    private enum CodingKeys: String, CodingKey {
        case opcWorkRequestId, opcRequestId, location, contentLocation, etag, delegationControl
    }

    public init(
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil,
                location: String? = nil,
                contentLocation: String? = nil,
                etag: String? = nil,
                delegationControl: DelegationControl? = nil
    ) {
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
        self.location = location
        self.contentLocation = contentLocation
        self.etag = etag
        self.delegationControl = delegationControl
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateDelegationControlResponse: CustomStringConvertible {
    public var description: String { "CreateDelegationControlResponse()" }
}