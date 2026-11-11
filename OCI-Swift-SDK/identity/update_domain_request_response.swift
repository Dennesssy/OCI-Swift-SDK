import Foundation

// MARK: - UpdateDomainRequest

public struct UpdateDomainRequest: Codable, Sendable {
    public var domainId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateDomainDetails: UpdateDomainDetails?

    private enum CodingKeys: String, CodingKey {
        case domainId, ifMatch, opcRequestId, updateDomainDetails
    }

    public init(
                domainId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateDomainDetails: UpdateDomainDetails? = nil
    ) {
        self.domainId = domainId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateDomainDetails = updateDomainDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateDomainRequest: CustomStringConvertible {
    public var description: String { "UpdateDomainRequest()" }
}

// MARK: - UpdateDomainResponse

public struct UpdateDomainResponse: Codable, Sendable {
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

extension UpdateDomainResponse: CustomStringConvertible {
    public var description: String { "UpdateDomainResponse()" }
}