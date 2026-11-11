import Foundation

// MARK: - DeletePrivateServiceAccessRequest

public struct DeletePrivateServiceAccessRequest: Codable, Sendable {
    public var privateServiceAccessId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case privateServiceAccessId, ifMatch, opcRequestId
    }

    public init(
                privateServiceAccessId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.privateServiceAccessId = privateServiceAccessId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeletePrivateServiceAccessRequest: CustomStringConvertible {
    public var description: String { "DeletePrivateServiceAccessRequest()" }
}

// MARK: - DeletePrivateServiceAccessResponse

public struct DeletePrivateServiceAccessResponse: Codable, Sendable {
    public var opcWorkRequestId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case opcWorkRequestId, opcRequestId
    }

    public init(
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeletePrivateServiceAccessResponse: CustomStringConvertible {
    public var description: String { "DeletePrivateServiceAccessResponse()" }
}