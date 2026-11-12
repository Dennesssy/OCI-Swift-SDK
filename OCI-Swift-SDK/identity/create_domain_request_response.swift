import Foundation

// MARK: - CreateDomainRequest

public struct CreateDomainRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var createDomainDetails: CreateDomainDetails?
    public var opcRetryToken: String?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, createDomainDetails, opcRetryToken
    }

    public init(
                opcRequestId: String? = nil,
                createDomainDetails: CreateDomainDetails? = nil,
                opcRetryToken: String? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.createDomainDetails = createDomainDetails
        self.opcRetryToken = opcRetryToken
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateDomainRequest: CustomStringConvertible {
    public var description: String { "CreateDomainRequest()" }
}

// MARK: - CreateDomainResponse

public struct CreateDomainResponse: Codable, Sendable {
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

extension CreateDomainResponse: CustomStringConvertible {
    public var description: String { "CreateDomainResponse()" }
}