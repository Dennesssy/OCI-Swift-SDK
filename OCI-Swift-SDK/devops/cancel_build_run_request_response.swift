import Foundation

// MARK: - CancelBuildRunRequest

public struct CancelBuildRunRequest: Codable, Sendable {
    public var buildRunId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var cancelBuildRunDetails: CancelBuildRunDetails?

    private enum CodingKeys: String, CodingKey {
        case buildRunId, ifMatch, opcRequestId, cancelBuildRunDetails
    }

    public init(
                buildRunId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                cancelBuildRunDetails: CancelBuildRunDetails? = nil
    ) {
        self.buildRunId = buildRunId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.cancelBuildRunDetails = cancelBuildRunDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CancelBuildRunRequest: CustomStringConvertible {
    public var description: String { "CancelBuildRunRequest()" }
}

// MARK: - CancelBuildRunResponse

public struct CancelBuildRunResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var buildRun: BuildRun?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, buildRun
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                buildRun: BuildRun? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.buildRun = buildRun
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CancelBuildRunResponse: CustomStringConvertible {
    public var description: String { "CancelBuildRunResponse()" }
}