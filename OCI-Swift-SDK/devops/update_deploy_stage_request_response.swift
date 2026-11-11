import Foundation
import OCICommon

// MARK: - UpdateDeployStageRequest

public struct UpdateDeployStageRequest: Codable, Sendable {
    public var deployStageId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateDeployStageDetails: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case deployStageId, ifMatch, opcRequestId, updateDeployStageDetails
    }

    public init(
                deployStageId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateDeployStageDetails: JSONValue? = nil
    ) {
        self.deployStageId = deployStageId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateDeployStageDetails = updateDeployStageDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateDeployStageRequest: CustomStringConvertible {
    public var description: String { "UpdateDeployStageRequest()" }
}

// MARK: - UpdateDeployStageResponse

public struct UpdateDeployStageResponse: Codable, Sendable {
    public var location: String?
    public var etag: String?
    public var opcWorkRequestId: String?
    public var opcRequestId: String?
    public var deployStage: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case location, etag, opcWorkRequestId, opcRequestId, deployStage
    }

    public init(
                location: String? = nil,
                etag: String? = nil,
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil,
                deployStage: JSONValue? = nil
    ) {
        self.location = location
        self.etag = etag
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
        self.deployStage = deployStage
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateDeployStageResponse: CustomStringConvertible {
    public var description: String { "UpdateDeployStageResponse()" }
}