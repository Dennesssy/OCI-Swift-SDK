import Foundation

// MARK: - UpdatePrivateServiceAccessRequest

public struct UpdatePrivateServiceAccessRequest: Codable, Sendable {
    public var privateServiceAccessId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updatePrivateServiceAccessDetails: UpdatePrivateServiceAccessDetails?

    private enum CodingKeys: String, CodingKey {
        case privateServiceAccessId, ifMatch, opcRequestId, updatePrivateServiceAccessDetails
    }

    public init(
                privateServiceAccessId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updatePrivateServiceAccessDetails: UpdatePrivateServiceAccessDetails? = nil
    ) {
        self.privateServiceAccessId = privateServiceAccessId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updatePrivateServiceAccessDetails = updatePrivateServiceAccessDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdatePrivateServiceAccessRequest: CustomStringConvertible {
    public var description: String { "UpdatePrivateServiceAccessRequest()" }
}

// MARK: - UpdatePrivateServiceAccessResponse

public struct UpdatePrivateServiceAccessResponse: Codable, Sendable {
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

extension UpdatePrivateServiceAccessResponse: CustomStringConvertible {
    public var description: String { "UpdatePrivateServiceAccessResponse()" }
}