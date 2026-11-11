import Foundation

// MARK: - DeleteDomainRequest

public struct DeleteDomainRequest: Codable, Sendable {
    public var domainId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case domainId, ifMatch, opcRequestId
    }

    public init(
                domainId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.domainId = domainId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteDomainRequest: CustomStringConvertible {
    public var description: String { "DeleteDomainRequest()" }
}

// MARK: - DeleteDomainResponse

public struct DeleteDomainResponse: Codable, Sendable {
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

extension DeleteDomainResponse: CustomStringConvertible {
    public var description: String { "DeleteDomainResponse()" }
}