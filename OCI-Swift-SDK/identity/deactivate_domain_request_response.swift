import Foundation

// MARK: - DeactivateDomainRequest

public struct DeactivateDomainRequest: Codable, Sendable {
    public var domainId: String?
    public var opcRequestId: String?
    public var ifMatch: String?

    private enum CodingKeys: String, CodingKey {
        case domainId, opcRequestId, ifMatch
    }

    public init(
                domainId: String? = nil,
                opcRequestId: String? = nil,
                ifMatch: String? = nil
    ) {
        self.domainId = domainId
        self.opcRequestId = opcRequestId
        self.ifMatch = ifMatch
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeactivateDomainRequest: CustomStringConvertible {
    public var description: String { "DeactivateDomainRequest()" }
}

// MARK: - DeactivateDomainResponse

public struct DeactivateDomainResponse: Codable, Sendable {
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

extension DeactivateDomainResponse: CustomStringConvertible {
    public var description: String { "DeactivateDomainResponse()" }
}