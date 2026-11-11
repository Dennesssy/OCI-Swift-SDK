import Foundation

// MARK: - UpdatePrivilegedApiControlRequest

public struct UpdatePrivilegedApiControlRequest: Codable, Sendable {
    public var privilegedApiControlId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updatePrivilegedApiControlDetails: UpdatePrivilegedApiControlDetails?

    private enum CodingKeys: String, CodingKey {
        case privilegedApiControlId, ifMatch, opcRequestId, updatePrivilegedApiControlDetails
    }

    public init(
                privilegedApiControlId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updatePrivilegedApiControlDetails: UpdatePrivilegedApiControlDetails? = nil
    ) {
        self.privilegedApiControlId = privilegedApiControlId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updatePrivilegedApiControlDetails = updatePrivilegedApiControlDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdatePrivilegedApiControlRequest: CustomStringConvertible {
    public var description: String { "UpdatePrivilegedApiControlRequest()" }
}

// MARK: - UpdatePrivilegedApiControlResponse

public struct UpdatePrivilegedApiControlResponse: Codable, Sendable {
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

extension UpdatePrivilegedApiControlResponse: CustomStringConvertible {
    public var description: String { "UpdatePrivilegedApiControlResponse()" }
}