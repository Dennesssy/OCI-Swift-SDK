import Foundation

// MARK: - GetSdkRequest

public struct GetSdkRequest: Codable, Sendable {
    public var sdkId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case sdkId, opcRequestId
    }

    public init(
                sdkId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.sdkId = sdkId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetSdkRequest: CustomStringConvertible {
    public var description: String { "GetSdkRequest()" }
}

// MARK: - GetSdkResponse

public struct GetSdkResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var sdk: Sdk?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, sdk
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                sdk: Sdk? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.sdk = sdk
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetSdkResponse: CustomStringConvertible {
    public var description: String { "GetSdkResponse()" }
}