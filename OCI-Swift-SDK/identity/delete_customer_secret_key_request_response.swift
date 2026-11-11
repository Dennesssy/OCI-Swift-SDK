import Foundation

// MARK: - DeleteCustomerSecretKeyRequest

public struct DeleteCustomerSecretKeyRequest: Codable, Sendable {
    public var userId: String?
    public var customerSecretKeyId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case userId, customerSecretKeyId, ifMatch, opcRequestId
    }

    public init(
                userId: String? = nil,
                customerSecretKeyId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.userId = userId
        self.customerSecretKeyId = customerSecretKeyId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteCustomerSecretKeyRequest: CustomStringConvertible {
    public var description: String { "DeleteCustomerSecretKeyRequest()" }
}

// MARK: - DeleteCustomerSecretKeyResponse

public struct DeleteCustomerSecretKeyResponse: Codable, Sendable {
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId
    }

    public init(
                opcRequestId: String? = nil
    ) {
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteCustomerSecretKeyResponse: CustomStringConvertible {
    public var description: String { "DeleteCustomerSecretKeyResponse()" }
}