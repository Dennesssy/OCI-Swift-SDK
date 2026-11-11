import Foundation

// MARK: - DeleteInfrastructureRequest

public struct DeleteInfrastructureRequest: Codable, Sendable {
    public var infrastructureId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var isForceDeleteInfrastructure: Bool?

    private enum CodingKeys: String, CodingKey {
        case infrastructureId, ifMatch, opcRequestId, isForceDeleteInfrastructure
    }

    public init(
                infrastructureId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                isForceDeleteInfrastructure: Bool? = nil
    ) {
        self.infrastructureId = infrastructureId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.isForceDeleteInfrastructure = isForceDeleteInfrastructure
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteInfrastructureRequest: CustomStringConvertible {
    public var description: String { "DeleteInfrastructureRequest()" }
}

// MARK: - DeleteInfrastructureResponse

public struct DeleteInfrastructureResponse: Codable, Sendable {
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

extension DeleteInfrastructureResponse: CustomStringConvertible {
    public var description: String { "DeleteInfrastructureResponse()" }
}