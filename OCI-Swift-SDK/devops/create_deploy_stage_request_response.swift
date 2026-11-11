import Foundation
import OCICommon

// MARK: - CreateDeployStageRequest

public struct CreateDeployStageRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var createDeployStageDetails: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, createDeployStageDetails
    }

    public init(
                opcRequestId: String? = nil,
                createDeployStageDetails: JSONValue? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.createDeployStageDetails = createDeployStageDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateDeployStageRequest: CustomStringConvertible {
    public var description: String { "CreateDeployStageRequest()" }
}

// MARK: - CreateDeployStageResponse

public struct CreateDeployStageResponse: Codable, Sendable {
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

extension CreateDeployStageResponse: CustomStringConvertible {
    public var description: String { "CreateDeployStageResponse()" }
}