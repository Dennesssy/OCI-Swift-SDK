import Foundation
import OCICommon

// MARK: - GetRefRequest

public struct GetRefRequest: Codable, Sendable {
    public var repositoryId: String?
    public var refName: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case repositoryId, refName, opcRequestId
    }

    public init(
                repositoryId: String? = nil,
                refName: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.repositoryId = repositoryId
        self.refName = refName
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetRefRequest: CustomStringConvertible {
    public var description: String { "GetRefRequest()" }
}

// MARK: - GetRefResponse

public struct GetRefResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var sunset: String?
    public var repositoryRef: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, sunset, repositoryRef
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                sunset: String? = nil,
                repositoryRef: JSONValue? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.sunset = sunset
        self.repositoryRef = repositoryRef
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetRefResponse: CustomStringConvertible {
    public var description: String { "GetRefResponse()" }
}