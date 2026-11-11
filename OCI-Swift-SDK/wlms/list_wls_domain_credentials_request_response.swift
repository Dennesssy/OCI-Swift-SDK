import Foundation

// MARK: - ListWlsDomainCredentialsRequest

public struct ListWlsDomainCredentialsRequest: Codable, Sendable {
    public var wlsDomainId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case wlsDomainId, opcRequestId
    }

    public init(
                wlsDomainId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.wlsDomainId = wlsDomainId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListWlsDomainCredentialsRequest: CustomStringConvertible {
    public var description: String { "ListWlsDomainCredentialsRequest()" }
}

// MARK: - ListWlsDomainCredentialsResponse

public struct ListWlsDomainCredentialsResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var wlsDomainCredentialCollection: WlsDomainCredentialCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, wlsDomainCredentialCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                wlsDomainCredentialCollection: WlsDomainCredentialCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.wlsDomainCredentialCollection = wlsDomainCredentialCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListWlsDomainCredentialsResponse: CustomStringConvertible {
    public var description: String { "ListWlsDomainCredentialsResponse()" }
}