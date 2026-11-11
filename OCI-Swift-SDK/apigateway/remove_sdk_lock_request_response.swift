import Foundation

// MARK: - RemoveSdkLockRequest

public struct RemoveSdkLockRequest: Codable, Sendable {
    public var sdkId: String?
    public var opcRequestId: String?
    public var ifMatch: String?
    public var removeResourceLockDetails: RemoveResourceLockDetails?

    private enum CodingKeys: String, CodingKey {
        case sdkId, opcRequestId, ifMatch, removeResourceLockDetails
    }

    public init(
                sdkId: String? = nil,
                opcRequestId: String? = nil,
                ifMatch: String? = nil,
                removeResourceLockDetails: RemoveResourceLockDetails? = nil
    ) {
        self.sdkId = sdkId
        self.opcRequestId = opcRequestId
        self.ifMatch = ifMatch
        self.removeResourceLockDetails = removeResourceLockDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RemoveSdkLockRequest: CustomStringConvertible {
    public var description: String { "RemoveSdkLockRequest()" }
}

// MARK: - RemoveSdkLockResponse

public struct RemoveSdkLockResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var etag: String?
    public var sdk: Sdk?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, etag, sdk
    }

    public init(
                opcRequestId: String? = nil,
                etag: String? = nil,
                sdk: Sdk? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.etag = etag
        self.sdk = sdk
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RemoveSdkLockResponse: CustomStringConvertible {
    public var description: String { "RemoveSdkLockResponse()" }
}