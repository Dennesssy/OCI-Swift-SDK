import Foundation

// MARK: - UpdateBuildRunRequest

public struct UpdateBuildRunRequest: Codable, Sendable {
    public var buildRunId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateBuildRunDetails: UpdateBuildRunDetails?

    private enum CodingKeys: String, CodingKey {
        case buildRunId, ifMatch, opcRequestId, updateBuildRunDetails
    }

    public init(
                buildRunId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateBuildRunDetails: UpdateBuildRunDetails? = nil
    ) {
        self.buildRunId = buildRunId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateBuildRunDetails = updateBuildRunDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateBuildRunRequest: CustomStringConvertible {
    public var description: String { "UpdateBuildRunRequest()" }
}

// MARK: - UpdateBuildRunResponse

public struct UpdateBuildRunResponse: Codable, Sendable {
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

extension UpdateBuildRunResponse: CustomStringConvertible {
    public var description: String { "UpdateBuildRunResponse()" }
}