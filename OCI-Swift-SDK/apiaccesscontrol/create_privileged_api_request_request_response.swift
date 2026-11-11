import Foundation

// MARK: - CreatePrivilegedApiRequestRequest

public struct CreatePrivilegedApiRequestRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var createPrivilegedApiRequestDetails: CreatePrivilegedApiRequestDetails?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, createPrivilegedApiRequestDetails
    }

    public init(
                opcRequestId: String? = nil,
                createPrivilegedApiRequestDetails: CreatePrivilegedApiRequestDetails? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.createPrivilegedApiRequestDetails = createPrivilegedApiRequestDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreatePrivilegedApiRequestRequest: CustomStringConvertible {
    public var description: String { "CreatePrivilegedApiRequestRequest()" }
}

// MARK: - CreatePrivilegedApiRequestResponse

public struct CreatePrivilegedApiRequestResponse: Codable, Sendable {
    public var location: String?
    public var contentLocation: String?
    public var etag: String?
    public var opcWorkRequestId: String?
    public var opcRequestId: String?
    public var privilegedApiRequest: PrivilegedApiRequest?

    private enum CodingKeys: String, CodingKey {
        case location, contentLocation, etag, opcWorkRequestId, opcRequestId, privilegedApiRequest
    }

    public init(
                location: String? = nil,
                contentLocation: String? = nil,
                etag: String? = nil,
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil,
                privilegedApiRequest: PrivilegedApiRequest? = nil
    ) {
        self.location = location
        self.contentLocation = contentLocation
        self.etag = etag
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
        self.privilegedApiRequest = privilegedApiRequest
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreatePrivilegedApiRequestResponse: CustomStringConvertible {
    public var description: String { "CreatePrivilegedApiRequestResponse()" }
}