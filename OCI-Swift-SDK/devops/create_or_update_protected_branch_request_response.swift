import Foundation

// MARK: - CreateOrUpdateProtectedBranchRequest

public struct CreateOrUpdateProtectedBranchRequest: Codable, Sendable {
    public var repositoryId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var createOrUpdateProtectedBranchDetails: CreateOrUpdateProtectedBranchDetails?

    private enum CodingKeys: String, CodingKey {
        case repositoryId, ifMatch, opcRequestId, createOrUpdateProtectedBranchDetails
    }

    public init(
                repositoryId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                createOrUpdateProtectedBranchDetails: CreateOrUpdateProtectedBranchDetails? = nil
    ) {
        self.repositoryId = repositoryId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.createOrUpdateProtectedBranchDetails = createOrUpdateProtectedBranchDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateOrUpdateProtectedBranchRequest: CustomStringConvertible {
    public var description: String { "CreateOrUpdateProtectedBranchRequest()" }
}

// MARK: - CreateOrUpdateProtectedBranchResponse

public struct CreateOrUpdateProtectedBranchResponse: Codable, Sendable {
    public var location: String?
    public var etag: String?
    public var opcRequestId: String?
    public var protectedBranch: ProtectedBranch?

    private enum CodingKeys: String, CodingKey {
        case location, etag, opcRequestId, protectedBranch
    }

    public init(
                location: String? = nil,
                etag: String? = nil,
                opcRequestId: String? = nil,
                protectedBranch: ProtectedBranch? = nil
    ) {
        self.location = location
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.protectedBranch = protectedBranch
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateOrUpdateProtectedBranchResponse: CustomStringConvertible {
    public var description: String { "CreateOrUpdateProtectedBranchResponse()" }
}