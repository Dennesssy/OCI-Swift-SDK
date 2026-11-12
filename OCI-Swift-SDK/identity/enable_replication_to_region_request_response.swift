import Foundation

// MARK: - EnableReplicationToRegionRequest

public struct EnableReplicationToRegionRequest: Codable, Sendable {
    public var domainId: String?
    public var opcRequestId: String?
    public var ifMatch: String?
    public var enableReplicationToRegionDetails: EnableReplicationToRegionDetails?
    public var opcRetryToken: String?

    private enum CodingKeys: String, CodingKey {
        case domainId, opcRequestId, ifMatch, enableReplicationToRegionDetails, opcRetryToken
    }

    public init(
                domainId: String? = nil,
                opcRequestId: String? = nil,
                ifMatch: String? = nil,
                enableReplicationToRegionDetails: EnableReplicationToRegionDetails? = nil,
                opcRetryToken: String? = nil
    ) {
        self.domainId = domainId
        self.opcRequestId = opcRequestId
        self.ifMatch = ifMatch
        self.enableReplicationToRegionDetails = enableReplicationToRegionDetails
        self.opcRetryToken = opcRetryToken
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension EnableReplicationToRegionRequest: CustomStringConvertible {
    public var description: String { "EnableReplicationToRegionRequest()" }
}

// MARK: - EnableReplicationToRegionResponse

public struct EnableReplicationToRegionResponse: Codable, Sendable {
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

extension EnableReplicationToRegionResponse: CustomStringConvertible {
    public var description: String { "EnableReplicationToRegionResponse()" }
}