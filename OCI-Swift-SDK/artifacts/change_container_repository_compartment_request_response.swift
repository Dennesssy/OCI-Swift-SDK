import Foundation

// MARK: - ChangeContainerRepositoryCompartmentRequest

public struct ChangeContainerRepositoryCompartmentRequest: Codable, Sendable {
    public var repositoryId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var changeContainerRepositoryCompartmentDetails: ChangeContainerRepositoryCompartmentDetails?

    private enum CodingKeys: String, CodingKey {
        case repositoryId, ifMatch, opcRequestId, changeContainerRepositoryCompartmentDetails
    }

    public init(
                repositoryId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                changeContainerRepositoryCompartmentDetails: ChangeContainerRepositoryCompartmentDetails? = nil
    ) {
        self.repositoryId = repositoryId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.changeContainerRepositoryCompartmentDetails = changeContainerRepositoryCompartmentDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ChangeContainerRepositoryCompartmentRequest: CustomStringConvertible {
    public var description: String { "ChangeContainerRepositoryCompartmentRequest()" }
}

// MARK: - ChangeContainerRepositoryCompartmentResponse

public struct ChangeContainerRepositoryCompartmentResponse: Codable, Sendable {
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

extension ChangeContainerRepositoryCompartmentResponse: CustomStringConvertible {
    public var description: String { "ChangeContainerRepositoryCompartmentResponse()" }
}