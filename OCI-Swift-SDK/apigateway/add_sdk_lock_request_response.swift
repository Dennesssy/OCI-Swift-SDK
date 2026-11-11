import Foundation

// MARK: - AddSdkLockRequest

public struct AddSdkLockRequest: Codable, Sendable {
    public var sdkId: String?
    public var opcRequestId: String?
    public var ifMatch: String?
    public var addResourceLockDetails: AddResourceLockDetails?

    private enum CodingKeys: String, CodingKey {
        case sdkId, opcRequestId, ifMatch, addResourceLockDetails
    }

    public init(
                sdkId: String? = nil,
                opcRequestId: String? = nil,
                ifMatch: String? = nil,
                addResourceLockDetails: AddResourceLockDetails? = nil
    ) {
        self.sdkId = sdkId
        self.opcRequestId = opcRequestId
        self.ifMatch = ifMatch
        self.addResourceLockDetails = addResourceLockDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension AddSdkLockRequest: CustomStringConvertible {
    public var description: String { "AddSdkLockRequest()" }
}

// MARK: - AddSdkLockResponse

public struct AddSdkLockResponse: Codable, Sendable {
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

extension AddSdkLockResponse: CustomStringConvertible {
    public var description: String { "AddSdkLockResponse()" }
}