import Foundation

// MARK: - UpdateCustomerSecretKeyRequest

public struct UpdateCustomerSecretKeyRequest: Codable, Sendable {
    public var userId: String?
    public var customerSecretKeyId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateCustomerSecretKeyDetails: UpdateCustomerSecretKeyDetails?

    private enum CodingKeys: String, CodingKey {
        case userId, customerSecretKeyId, ifMatch, opcRequestId, updateCustomerSecretKeyDetails
    }

    public init(
                userId: String? = nil,
                customerSecretKeyId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateCustomerSecretKeyDetails: UpdateCustomerSecretKeyDetails? = nil
    ) {
        self.userId = userId
        self.customerSecretKeyId = customerSecretKeyId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateCustomerSecretKeyDetails = updateCustomerSecretKeyDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateCustomerSecretKeyRequest: CustomStringConvertible {
    public var description: String { "UpdateCustomerSecretKeyRequest()" }
}

// MARK: - UpdateCustomerSecretKeyResponse

public struct UpdateCustomerSecretKeyResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var etag: String?
    public var customerSecretKeySummary: CustomerSecretKeySummary?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, etag, customerSecretKeySummary
    }

    public init(
                opcRequestId: String? = nil,
                etag: String? = nil,
                customerSecretKeySummary: CustomerSecretKeySummary? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.etag = etag
        self.customerSecretKeySummary = customerSecretKeySummary
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateCustomerSecretKeyResponse: CustomStringConvertible {
    public var description: String { "UpdateCustomerSecretKeyResponse()" }
}