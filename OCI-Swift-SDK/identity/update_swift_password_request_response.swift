import Foundation

// MARK: - UpdateSwiftPasswordRequest

public struct UpdateSwiftPasswordRequest: Codable, Sendable {
    public var userId: String?
    public var swiftPasswordId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateSwiftPasswordDetails: UpdateSwiftPasswordDetails?

    private enum CodingKeys: String, CodingKey {
        case userId, swiftPasswordId, ifMatch, opcRequestId, updateSwiftPasswordDetails
    }

    public init(
                userId: String? = nil,
                swiftPasswordId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateSwiftPasswordDetails: UpdateSwiftPasswordDetails? = nil
    ) {
        self.userId = userId
        self.swiftPasswordId = swiftPasswordId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateSwiftPasswordDetails = updateSwiftPasswordDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateSwiftPasswordRequest: CustomStringConvertible {
    public var description: String { "UpdateSwiftPasswordRequest()" }
}

// MARK: - UpdateSwiftPasswordResponse

public struct UpdateSwiftPasswordResponse: Codable, Sendable {
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

extension UpdateSwiftPasswordResponse: CustomStringConvertible {
    public var description: String { "UpdateSwiftPasswordResponse()" }
}