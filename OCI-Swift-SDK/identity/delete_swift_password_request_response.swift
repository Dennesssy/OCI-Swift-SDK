import Foundation

// MARK: - DeleteSwiftPasswordRequest

public struct DeleteSwiftPasswordRequest: Codable, Sendable {
    public var userId: String?
    public var swiftPasswordId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case userId, swiftPasswordId, ifMatch, opcRequestId
    }

    public init(
                userId: String? = nil,
                swiftPasswordId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.userId = userId
        self.swiftPasswordId = swiftPasswordId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteSwiftPasswordRequest: CustomStringConvertible {
    public var description: String { "DeleteSwiftPasswordRequest()" }
}

// MARK: - DeleteSwiftPasswordResponse

public struct DeleteSwiftPasswordResponse: Codable, Sendable {
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

extension DeleteSwiftPasswordResponse: CustomStringConvertible {
    public var description: String { "DeleteSwiftPasswordResponse()" }
}