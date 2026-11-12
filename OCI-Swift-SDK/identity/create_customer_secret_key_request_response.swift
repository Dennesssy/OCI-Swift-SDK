import Foundation

// MARK: - CreateCustomerSecretKeyRequest

public struct CreateCustomerSecretKeyRequest: Codable, Sendable {
    public var userId: String?
    public var opcRequestId: String?
    public var createCustomerSecretKeyDetails: CreateCustomerSecretKeyDetails?
    public var opcRetryToken: String?

    private enum CodingKeys: String, CodingKey {
        case userId, opcRequestId, createCustomerSecretKeyDetails, opcRetryToken
    }

    public init(
                userId: String? = nil,
                opcRequestId: String? = nil,
                createCustomerSecretKeyDetails: CreateCustomerSecretKeyDetails? = nil,
                opcRetryToken: String? = nil
    ) {
        self.userId = userId
        self.opcRequestId = opcRequestId
        self.createCustomerSecretKeyDetails = createCustomerSecretKeyDetails
        self.opcRetryToken = opcRetryToken
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateCustomerSecretKeyRequest: CustomStringConvertible {
    public var description: String { "CreateCustomerSecretKeyRequest()" }
}

// MARK: - CreateCustomerSecretKeyResponse

public struct CreateCustomerSecretKeyResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var etag: String?
    public var customerSecretKey: CustomerSecretKey?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, etag, customerSecretKey
    }

    public init(
                opcRequestId: String? = nil,
                etag: String? = nil,
                customerSecretKey: CustomerSecretKey? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.etag = etag
        self.customerSecretKey = customerSecretKey
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateCustomerSecretKeyResponse: CustomStringConvertible {
    public var description: String { "CreateCustomerSecretKeyResponse()" }
}