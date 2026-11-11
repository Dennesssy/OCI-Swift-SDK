import Foundation

// MARK: - InstallLatestPatchesOnWlsDomainDetails

public struct InstallLatestPatchesOnWlsDomainDetails: Codable, Sendable {

    public var isForceServersShutdown: Bool?
    public var mustIncludeDomainsSharingMiddleware: Bool?

    private enum CodingKeys: String, CodingKey {
        case isForceServersShutdown, mustIncludeDomainsSharingMiddleware
    }

    public init(
                isForceServersShutdown: Bool? = nil,
                mustIncludeDomainsSharingMiddleware: Bool? = nil
    ) {
        self.isForceServersShutdown = isForceServersShutdown
        self.mustIncludeDomainsSharingMiddleware = mustIncludeDomainsSharingMiddleware
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension InstallLatestPatchesOnWlsDomainDetails: CustomStringConvertible {
    public var description: String { "InstallLatestPatchesOnWlsDomainDetails()" }
}