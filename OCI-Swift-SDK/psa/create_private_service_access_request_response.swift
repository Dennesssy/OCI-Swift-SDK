import Foundation

// MARK: - CreatePrivateServiceAccessRequest

public struct CreatePrivateServiceAccessRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var createPrivateServiceAccessDetails: CreatePrivateServiceAccessDetails?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, createPrivateServiceAccessDetails
    }

    public init(
                opcRequestId: String? = nil,
                createPrivateServiceAccessDetails: CreatePrivateServiceAccessDetails? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.createPrivateServiceAccessDetails = createPrivateServiceAccessDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreatePrivateServiceAccessRequest: CustomStringConvertible {
    public var description: String { "CreatePrivateServiceAccessRequest()" }
}

// MARK: - CreatePrivateServiceAccessResponse

public struct CreatePrivateServiceAccessResponse: Codable, Sendable {
    public var location: String?
    public var contentLocation: String?
    public var etag: String?
    public var opcWorkRequestId: String?
    public var opcRequestId: String?
    public var privateServiceAccess: PrivateServiceAccess?

    private enum CodingKeys: String, CodingKey {
        case location, contentLocation, etag, opcWorkRequestId, opcRequestId, privateServiceAccess
    }

    public init(
                location: String? = nil,
                contentLocation: String? = nil,
                etag: String? = nil,
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil,
                privateServiceAccess: PrivateServiceAccess? = nil
    ) {
        self.location = location
        self.contentLocation = contentLocation
        self.etag = etag
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
        self.privateServiceAccess = privateServiceAccess
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreatePrivateServiceAccessResponse: CustomStringConvertible {
    public var description: String { "CreatePrivateServiceAccessResponse()" }
}