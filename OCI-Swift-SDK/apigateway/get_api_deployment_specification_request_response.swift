import Foundation

// MARK: - GetApiDeploymentSpecificationRequest

public struct GetApiDeploymentSpecificationRequest: Codable, Sendable {
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

extension GetApiDeploymentSpecificationRequest: CustomStringConvertible {
    public var description: String { "GetApiDeploymentSpecificationRequest()" }
}

// MARK: - GetApiDeploymentSpecificationResponse

public struct GetApiDeploymentSpecificationResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var apiSpecification: ApiSpecification?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, apiSpecification
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                apiSpecification: ApiSpecification? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.apiSpecification = apiSpecification
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetApiDeploymentSpecificationResponse: CustomStringConvertible {
    public var description: String { "GetApiDeploymentSpecificationResponse()" }
}