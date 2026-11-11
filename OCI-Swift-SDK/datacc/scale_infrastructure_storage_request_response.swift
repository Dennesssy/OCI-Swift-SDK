import Foundation

// MARK: - ScaleInfrastructureStorageRequest

public struct ScaleInfrastructureStorageRequest: Codable, Sendable {
    public var infrastructureId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var scaleInfrastructureStorageDetails: ScaleInfrastructureStorageDetails?

    private enum CodingKeys: String, CodingKey {
        case infrastructureId, ifMatch, opcRequestId, scaleInfrastructureStorageDetails
    }

    public init(
                infrastructureId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                scaleInfrastructureStorageDetails: ScaleInfrastructureStorageDetails? = nil
    ) {
        self.infrastructureId = infrastructureId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.scaleInfrastructureStorageDetails = scaleInfrastructureStorageDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ScaleInfrastructureStorageRequest: CustomStringConvertible {
    public var description: String { "ScaleInfrastructureStorageRequest()" }
}

// MARK: - ScaleInfrastructureStorageResponse

public struct ScaleInfrastructureStorageResponse: Codable, Sendable {
    public var opcWorkRequestId: String?
    public var opcRequestId: String?
    public var location: String?

    private enum CodingKeys: String, CodingKey {
        case opcWorkRequestId, opcRequestId, location
    }

    public init(
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil,
                location: String? = nil
    ) {
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
        self.location = location
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ScaleInfrastructureStorageResponse: CustomStringConvertible {
    public var description: String { "ScaleInfrastructureStorageResponse()" }
}