import Foundation

// MARK: - DeletePrivilegedApiControlRequest

public struct DeletePrivilegedApiControlRequest: Codable, Sendable {
    public var privilegedApiControlId: String?
    public var description: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case privilegedApiControlId, description, ifMatch, opcRequestId
    }

    public init(
                privilegedApiControlId: String? = nil,
                description: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.privilegedApiControlId = privilegedApiControlId
        self.description = description
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}


// MARK: - DeletePrivilegedApiControlResponse

public struct DeletePrivilegedApiControlResponse: Codable, Sendable {
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

extension DeletePrivilegedApiControlResponse: CustomStringConvertible {
    public var description: String { "DeletePrivilegedApiControlResponse()" }
}