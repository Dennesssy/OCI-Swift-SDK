import Foundation

// MARK: - DeleteDelegationControlRequest

public struct DeleteDelegationControlRequest: Codable, Sendable {
    public var delegationControlId: String?
    public var description: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case delegationControlId, description, ifMatch, opcRequestId
    }

    public init(
                delegationControlId: String? = nil,
                description: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.delegationControlId = delegationControlId
        self.description = description
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}


// MARK: - DeleteDelegationControlResponse

public struct DeleteDelegationControlResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcWorkRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcWorkRequestId
    }

    public init(
                opcRequestId: String? = nil,
                opcWorkRequestId: String? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcWorkRequestId = opcWorkRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteDelegationControlResponse: CustomStringConvertible {
    public var description: String { "DeleteDelegationControlResponse()" }
}