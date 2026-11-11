import Foundation

// MARK: - GetPrivateServiceAccessRequest

public struct GetPrivateServiceAccessRequest: Codable, Sendable {
    public var privateServiceAccessId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case privateServiceAccessId, opcRequestId
    }

    public init(
                privateServiceAccessId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.privateServiceAccessId = privateServiceAccessId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetPrivateServiceAccessRequest: CustomStringConvertible {
    public var description: String { "GetPrivateServiceAccessRequest()" }
}

// MARK: - GetPrivateServiceAccessResponse

public struct GetPrivateServiceAccessResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var privateServiceAccess: PrivateServiceAccess?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, privateServiceAccess
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                privateServiceAccess: PrivateServiceAccess? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.privateServiceAccess = privateServiceAccess
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetPrivateServiceAccessResponse: CustomStringConvertible {
    public var description: String { "GetPrivateServiceAccessResponse()" }
}