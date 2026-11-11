import Foundation
import OCICommon

// MARK: - GetDeployStageRequest

public struct GetDeployStageRequest: Codable, Sendable {
    public var deployStageId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case deployStageId, opcRequestId
    }

    public init(
                deployStageId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.deployStageId = deployStageId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetDeployStageRequest: CustomStringConvertible {
    public var description: String { "GetDeployStageRequest()" }
}

// MARK: - GetDeployStageResponse

public struct GetDeployStageResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var deployStage: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, deployStage
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                deployStage: JSONValue? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.deployStage = deployStage
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetDeployStageResponse: CustomStringConvertible {
    public var description: String { "GetDeployStageResponse()" }
}