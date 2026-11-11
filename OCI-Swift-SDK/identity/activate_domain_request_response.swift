import Foundation

// MARK: - ActivateDomainRequest

public struct ActivateDomainRequest: Codable, Sendable {
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

extension ActivateDomainRequest: CustomStringConvertible {
    public var description: String { "ActivateDomainRequest()" }
}

// MARK: - ActivateDomainResponse

public struct ActivateDomainResponse: Codable, Sendable {
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

extension ActivateDomainResponse: CustomStringConvertible {
    public var description: String { "ActivateDomainResponse()" }
}