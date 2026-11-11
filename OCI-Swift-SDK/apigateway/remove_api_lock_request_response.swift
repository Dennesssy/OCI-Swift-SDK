import Foundation

// MARK: - RemoveApiLockRequest

public struct RemoveApiLockRequest: Codable, Sendable {
    public var apiId: String?
    public var opcRequestId: String?
    public var ifMatch: String?
    public var removeResourceLockDetails: RemoveResourceLockDetails?

    private enum CodingKeys: String, CodingKey {
        case apiId, opcRequestId, ifMatch, removeResourceLockDetails
    }

    public init(
                apiId: String? = nil,
                opcRequestId: String? = nil,
                ifMatch: String? = nil,
                removeResourceLockDetails: RemoveResourceLockDetails? = nil
    ) {
        self.apiId = apiId
        self.opcRequestId = opcRequestId
        self.ifMatch = ifMatch
        self.removeResourceLockDetails = removeResourceLockDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RemoveApiLockRequest: CustomStringConvertible {
    public var description: String { "RemoveApiLockRequest()" }
}

// MARK: - RemoveApiLockResponse

public struct RemoveApiLockResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var etag: String?
    public var api: Api?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, etag, api
    }

    public init(
                opcRequestId: String? = nil,
                etag: String? = nil,
                api: Api? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.etag = etag
        self.api = api
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RemoveApiLockResponse: CustomStringConvertible {
    public var description: String { "RemoveApiLockResponse()" }
}