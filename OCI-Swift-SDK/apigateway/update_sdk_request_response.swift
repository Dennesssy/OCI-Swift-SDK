import Foundation

// MARK: - UpdateSdkRequest

public struct UpdateSdkRequest: Codable, Sendable {
    public var sdkId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var isLockOverride: Bool?
    public var updateSdkDetails: UpdateSdkDetails?

    private enum CodingKeys: String, CodingKey {
        case sdkId, ifMatch, opcRequestId, isLockOverride, updateSdkDetails
    }

    public init(
                sdkId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                isLockOverride: Bool? = nil,
                updateSdkDetails: UpdateSdkDetails? = nil
    ) {
        self.sdkId = sdkId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.isLockOverride = isLockOverride
        self.updateSdkDetails = updateSdkDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateSdkRequest: CustomStringConvertible {
    public var description: String { "UpdateSdkRequest()" }
}

// MARK: - UpdateSdkResponse

public struct UpdateSdkResponse: Codable, Sendable {
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

extension UpdateSdkResponse: CustomStringConvertible {
    public var description: String { "UpdateSdkResponse()" }
}