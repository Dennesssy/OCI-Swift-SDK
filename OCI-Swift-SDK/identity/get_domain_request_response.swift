import Foundation

// MARK: - GetDomainRequest

public struct GetDomainRequest: Codable, Sendable {
    public var domainId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case domainId, opcRequestId
    }

    public init(
                domainId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.domainId = domainId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetDomainRequest: CustomStringConvertible {
    public var description: String { "GetDomainRequest()" }
}

// MARK: - GetDomainResponse

public struct GetDomainResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var etag: String?
    public var domain: Domain?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, etag, domain
    }

    public init(
                opcRequestId: String? = nil,
                etag: String? = nil,
                domain: Domain? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.etag = etag
        self.domain = domain
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetDomainResponse: CustomStringConvertible {
    public var description: String { "GetDomainResponse()" }
}