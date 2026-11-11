import Foundation

// MARK: - InstallLatestPatchesOnWlsDomainRequest

public struct InstallLatestPatchesOnWlsDomainRequest: Codable, Sendable {
    public var wlsDomainId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var installLatestPatchesOnWlsDomainDetails: InstallLatestPatchesOnWlsDomainDetails?

    private enum CodingKeys: String, CodingKey {
        case wlsDomainId, ifMatch, opcRequestId, installLatestPatchesOnWlsDomainDetails
    }

    public init(
                wlsDomainId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                installLatestPatchesOnWlsDomainDetails: InstallLatestPatchesOnWlsDomainDetails? = nil
    ) {
        self.wlsDomainId = wlsDomainId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.installLatestPatchesOnWlsDomainDetails = installLatestPatchesOnWlsDomainDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension InstallLatestPatchesOnWlsDomainRequest: CustomStringConvertible {
    public var description: String { "InstallLatestPatchesOnWlsDomainRequest()" }
}

// MARK: - InstallLatestPatchesOnWlsDomainResponse

public struct InstallLatestPatchesOnWlsDomainResponse: Codable, Sendable {
    public var opcWorkRequestId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case opcWorkRequestId, opcRequestId
    }

    public init(
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension InstallLatestPatchesOnWlsDomainResponse: CustomStringConvertible {
    public var description: String { "InstallLatestPatchesOnWlsDomainResponse()" }
}