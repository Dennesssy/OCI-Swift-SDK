import Foundation

// MARK: - CreateBuildRunRequest

public struct CreateBuildRunRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var ifMatch: String?
    public var createBuildRunDetails: CreateBuildRunDetails?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, ifMatch, createBuildRunDetails
    }

    public init(
                opcRequestId: String? = nil,
                ifMatch: String? = nil,
                createBuildRunDetails: CreateBuildRunDetails? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.ifMatch = ifMatch
        self.createBuildRunDetails = createBuildRunDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateBuildRunRequest: CustomStringConvertible {
    public var description: String { "CreateBuildRunRequest()" }
}

// MARK: - CreateBuildRunResponse

public struct CreateBuildRunResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var location: String?
    public var buildRun: BuildRun?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, location, buildRun
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                location: String? = nil,
                buildRun: BuildRun? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.location = location
        self.buildRun = buildRun
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateBuildRunResponse: CustomStringConvertible {
    public var description: String { "CreateBuildRunResponse()" }
}