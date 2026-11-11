import Foundation

// MARK: - ChangeRepositoryCompartmentRequest

public struct ChangeRepositoryCompartmentRequest: Codable, Sendable {
    public var repositoryId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var changeRepositoryCompartmentDetails: ChangeRepositoryCompartmentDetails?

    private enum CodingKeys: String, CodingKey {
        case repositoryId, ifMatch, opcRequestId, changeRepositoryCompartmentDetails
    }

    public init(
                repositoryId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                changeRepositoryCompartmentDetails: ChangeRepositoryCompartmentDetails? = nil
    ) {
        self.repositoryId = repositoryId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.changeRepositoryCompartmentDetails = changeRepositoryCompartmentDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ChangeRepositoryCompartmentRequest: CustomStringConvertible {
    public var description: String { "ChangeRepositoryCompartmentRequest()" }
}

// MARK: - ChangeRepositoryCompartmentResponse

public struct ChangeRepositoryCompartmentResponse: Codable, Sendable {
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId
    }

    public init(
                opcRequestId: String? = nil
    ) {
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ChangeRepositoryCompartmentResponse: CustomStringConvertible {
    public var description: String { "ChangeRepositoryCompartmentResponse()" }
}