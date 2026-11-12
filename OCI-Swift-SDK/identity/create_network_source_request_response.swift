import Foundation

// MARK: - CreateNetworkSourceRequest

public struct CreateNetworkSourceRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var createNetworkSourceDetails: CreateNetworkSourceDetails?
    public var opcRetryToken: String?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, createNetworkSourceDetails, opcRetryToken
    }

    public init(
                opcRequestId: String? = nil,
                createNetworkSourceDetails: CreateNetworkSourceDetails? = nil,
                opcRetryToken: String? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.createNetworkSourceDetails = createNetworkSourceDetails
        self.opcRetryToken = opcRetryToken
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateNetworkSourceRequest: CustomStringConvertible {
    public var description: String { "CreateNetworkSourceRequest()" }
}

// MARK: - CreateNetworkSourceResponse

public struct CreateNetworkSourceResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var etag: String?
    public var networkSources: NetworkSources?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, etag, networkSources
    }

    public init(
                opcRequestId: String? = nil,
                etag: String? = nil,
                networkSources: NetworkSources? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.etag = etag
        self.networkSources = networkSources
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateNetworkSourceResponse: CustomStringConvertible {
    public var description: String { "CreateNetworkSourceResponse()" }
}