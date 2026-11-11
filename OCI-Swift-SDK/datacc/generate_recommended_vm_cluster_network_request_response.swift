import Foundation

// MARK: - GenerateRecommendedVmClusterNetworkRequest

public struct GenerateRecommendedVmClusterNetworkRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var ifMatch: String?
    public var generateRecommendedVmClusterNetworkDetails: GenerateRecommendedVmClusterNetworkDetails?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, ifMatch, generateRecommendedVmClusterNetworkDetails
    }

    public init(
                opcRequestId: String? = nil,
                ifMatch: String? = nil,
                generateRecommendedVmClusterNetworkDetails: GenerateRecommendedVmClusterNetworkDetails? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.ifMatch = ifMatch
        self.generateRecommendedVmClusterNetworkDetails = generateRecommendedVmClusterNetworkDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GenerateRecommendedVmClusterNetworkRequest: CustomStringConvertible {
    public var description: String { "GenerateRecommendedVmClusterNetworkRequest()" }
}

// MARK: - GenerateRecommendedVmClusterNetworkResponse

public struct GenerateRecommendedVmClusterNetworkResponse: Codable, Sendable {
    public var opcWorkRequestId: String?
    public var opcRequestId: String?
    public var etag: String?
    public var location: String?
    public var createVmClusterNetworkDetails: CreateVmClusterNetworkDetails?

    private enum CodingKeys: String, CodingKey {
        case opcWorkRequestId, opcRequestId, etag, location, createVmClusterNetworkDetails
    }

    public init(
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil,
                etag: String? = nil,
                location: String? = nil,
                createVmClusterNetworkDetails: CreateVmClusterNetworkDetails? = nil
    ) {
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
        self.etag = etag
        self.location = location
        self.createVmClusterNetworkDetails = createVmClusterNetworkDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GenerateRecommendedVmClusterNetworkResponse: CustomStringConvertible {
    public var description: String { "GenerateRecommendedVmClusterNetworkResponse()" }
}