import Foundation

// MARK: - DeleteDeployStageRequest

public struct DeleteDeployStageRequest: Codable, Sendable {
    public var deployStageId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case deployStageId, ifMatch, opcRequestId
    }

    public init(
                deployStageId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.deployStageId = deployStageId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteDeployStageRequest: CustomStringConvertible {
    public var description: String { "DeleteDeployStageRequest()" }
}

// MARK: - DeleteDeployStageResponse

public struct DeleteDeployStageResponse: Codable, Sendable {
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

extension DeleteDeployStageResponse: CustomStringConvertible {
    public var description: String { "DeleteDeployStageResponse()" }
}