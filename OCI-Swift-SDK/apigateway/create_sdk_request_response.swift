import Foundation

// MARK: - CreateSdkRequest

public struct CreateSdkRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var createSdkDetails: CreateSdkDetails?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, createSdkDetails
    }

    public init(
                opcRequestId: String? = nil,
                createSdkDetails: CreateSdkDetails? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.createSdkDetails = createSdkDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateSdkRequest: CustomStringConvertible {
    public var description: String { "CreateSdkRequest()" }
}

// MARK: - CreateSdkResponse

public struct CreateSdkResponse: Codable, Sendable {
    public var etag: String?
    public var opcWorkRequestId: String?
    public var opcRequestId: String?
    public var location: String?
    public var sdk: Sdk?

    private enum CodingKeys: String, CodingKey {
        case etag, opcWorkRequestId, opcRequestId, location, sdk
    }

    public init(
                etag: String? = nil,
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil,
                location: String? = nil,
                sdk: Sdk? = nil
    ) {
        self.etag = etag
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
        self.location = location
        self.sdk = sdk
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateSdkResponse: CustomStringConvertible {
    public var description: String { "CreateSdkResponse()" }
}