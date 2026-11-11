import Foundation

// MARK: - AddApiLockRequest

public struct AddApiLockRequest: Codable, Sendable {
    public var apiId: String?
    public var opcRequestId: String?
    public var ifMatch: String?
    public var addResourceLockDetails: AddResourceLockDetails?

    private enum CodingKeys: String, CodingKey {
        case apiId, opcRequestId, ifMatch, addResourceLockDetails
    }

    public init(
                apiId: String? = nil,
                opcRequestId: String? = nil,
                ifMatch: String? = nil,
                addResourceLockDetails: AddResourceLockDetails? = nil
    ) {
        self.apiId = apiId
        self.opcRequestId = opcRequestId
        self.ifMatch = ifMatch
        self.addResourceLockDetails = addResourceLockDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension AddApiLockRequest: CustomStringConvertible {
    public var description: String { "AddApiLockRequest()" }
}

// MARK: - AddApiLockResponse

public struct AddApiLockResponse: Codable, Sendable {
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

extension AddApiLockResponse: CustomStringConvertible {
    public var description: String { "AddApiLockResponse()" }
}