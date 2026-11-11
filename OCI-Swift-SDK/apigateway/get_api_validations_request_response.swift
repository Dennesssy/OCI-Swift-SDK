import Foundation

// MARK: - GetApiValidationsRequest

public struct GetApiValidationsRequest: Codable, Sendable {
    public var apiId: String?
    public var opcRequestId: String?
    public var ifMatch: String?

    private enum CodingKeys: String, CodingKey {
        case apiId, opcRequestId, ifMatch
    }

    public init(
                apiId: String? = nil,
                opcRequestId: String? = nil,
                ifMatch: String? = nil
    ) {
        self.apiId = apiId
        self.opcRequestId = opcRequestId
        self.ifMatch = ifMatch
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetApiValidationsRequest: CustomStringConvertible {
    public var description: String { "GetApiValidationsRequest()" }
}

// MARK: - GetApiValidationsResponse

public struct GetApiValidationsResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var apiValidations: ApiValidations?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, apiValidations
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                apiValidations: ApiValidations? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.apiValidations = apiValidations
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetApiValidationsResponse: CustomStringConvertible {
    public var description: String { "GetApiValidationsResponse()" }
}