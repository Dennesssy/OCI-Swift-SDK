import Foundation

// MARK: - CreateSwiftPasswordRequest

public struct CreateSwiftPasswordRequest: Codable, Sendable {
    public var userId: String?
    public var opcRequestId: String?
    public var createSwiftPasswordDetails: CreateSwiftPasswordDetails?
    public var opcRetryToken: String?

    private enum CodingKeys: String, CodingKey {
        case userId, opcRequestId, createSwiftPasswordDetails, opcRetryToken
    }

    public init(
                userId: String? = nil,
                opcRequestId: String? = nil,
                createSwiftPasswordDetails: CreateSwiftPasswordDetails? = nil,
                opcRetryToken: String? = nil
    ) {
        self.userId = userId
        self.opcRequestId = opcRequestId
        self.createSwiftPasswordDetails = createSwiftPasswordDetails
        self.opcRetryToken = opcRetryToken
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateSwiftPasswordRequest: CustomStringConvertible {
    public var description: String { "CreateSwiftPasswordRequest()" }
}

// MARK: - CreateSwiftPasswordResponse

public struct CreateSwiftPasswordResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var etag: String?
    public var swiftPassword: SwiftPassword?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, etag, swiftPassword
    }

    public init(
                opcRequestId: String? = nil,
                etag: String? = nil,
                swiftPassword: SwiftPassword? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.etag = etag
        self.swiftPassword = swiftPassword
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateSwiftPasswordResponse: CustomStringConvertible {
    public var description: String { "CreateSwiftPasswordResponse()" }
}