import Foundation

// MARK: - CreatePrivilegedApiControlRequest

public struct CreatePrivilegedApiControlRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var createPrivilegedApiControlDetails: CreatePrivilegedApiControlDetails?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, createPrivilegedApiControlDetails
    }

    public init(
                opcRequestId: String? = nil,
                createPrivilegedApiControlDetails: CreatePrivilegedApiControlDetails? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.createPrivilegedApiControlDetails = createPrivilegedApiControlDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreatePrivilegedApiControlRequest: CustomStringConvertible {
    public var description: String { "CreatePrivilegedApiControlRequest()" }
}

// MARK: - CreatePrivilegedApiControlResponse

public struct CreatePrivilegedApiControlResponse: Codable, Sendable {
    public var location: String?
    public var contentLocation: String?
    public var etag: String?
    public var opcWorkRequestId: String?
    public var opcRequestId: String?
    public var privilegedApiControl: PrivilegedApiControl?

    private enum CodingKeys: String, CodingKey {
        case location, contentLocation, etag, opcWorkRequestId, opcRequestId, privilegedApiControl
    }

    public init(
                location: String? = nil,
                contentLocation: String? = nil,
                etag: String? = nil,
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil,
                privilegedApiControl: PrivilegedApiControl? = nil
    ) {
        self.location = location
        self.contentLocation = contentLocation
        self.etag = etag
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
        self.privilegedApiControl = privilegedApiControl
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreatePrivilegedApiControlResponse: CustomStringConvertible {
    public var description: String { "CreatePrivilegedApiControlResponse()" }
}