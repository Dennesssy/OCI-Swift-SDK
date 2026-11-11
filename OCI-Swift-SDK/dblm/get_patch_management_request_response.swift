import Foundation

// MARK: - GetPatchManagementRequest

public struct GetPatchManagementRequest: Codable, Sendable {
    public var compartmentId: String?
    public var opcRequestId: String?
    public var databaseRelease: String?
    public var lifecycleState: DblmVulnerabilityLifecycleStateEnum?
    public var timeStartedGreaterThanOrEqualTo: Date?
    public var timeStartedLessThan: Date?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, opcRequestId, databaseRelease, lifecycleState, timeStartedGreaterThanOrEqualTo, timeStartedLessThan
    }

    public init(
                compartmentId: String? = nil,
                opcRequestId: String? = nil,
                databaseRelease: String? = nil,
                lifecycleState: DblmVulnerabilityLifecycleStateEnum? = nil,
                timeStartedGreaterThanOrEqualTo: Date? = nil,
                timeStartedLessThan: Date? = nil
    ) {
        self.compartmentId = compartmentId
        self.opcRequestId = opcRequestId
        self.databaseRelease = databaseRelease
        self.lifecycleState = lifecycleState
        self.timeStartedGreaterThanOrEqualTo = timeStartedGreaterThanOrEqualTo
        self.timeStartedLessThan = timeStartedLessThan
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetPatchManagementRequest: CustomStringConvertible {
    public var description: String { "GetPatchManagementRequest()" }
}

// MARK: - GetPatchManagementResponse

public struct GetPatchManagementResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var dblmPatchManagement: DblmPatchManagement?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, dblmPatchManagement
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                dblmPatchManagement: DblmPatchManagement? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.dblmPatchManagement = dblmPatchManagement
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetPatchManagementResponse: CustomStringConvertible {
    public var description: String { "GetPatchManagementResponse()" }
}