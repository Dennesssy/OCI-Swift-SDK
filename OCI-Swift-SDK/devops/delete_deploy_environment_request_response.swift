import Foundation

// MARK: - DeleteDeployEnvironmentRequest

public struct DeleteDeployEnvironmentRequest: Codable, Sendable {
    public var deployEnvironmentId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case deployEnvironmentId, ifMatch, opcRequestId
    }

    public init(
                deployEnvironmentId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.deployEnvironmentId = deployEnvironmentId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteDeployEnvironmentRequest: CustomStringConvertible {
    public var description: String { "DeleteDeployEnvironmentRequest()" }
}

// MARK: - DeleteDeployEnvironmentResponse

public struct DeleteDeployEnvironmentResponse: Codable, Sendable {
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

extension DeleteDeployEnvironmentResponse: CustomStringConvertible {
    public var description: String { "DeleteDeployEnvironmentResponse()" }
}