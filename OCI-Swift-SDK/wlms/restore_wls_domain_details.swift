import Foundation

// MARK: - RestoreWlsDomainDetails

public struct RestoreWlsDomainDetails: Codable, Sendable {

    public var isForceServersShutdown: Bool?
    public var mustIncludeDomainsSharingMiddleware: Bool?
    public var serversToRestore: [ServerToRestore]?

    private enum CodingKeys: String, CodingKey {
        case isForceServersShutdown, mustIncludeDomainsSharingMiddleware, serversToRestore
    }

    public init(
                isForceServersShutdown: Bool? = nil,
                mustIncludeDomainsSharingMiddleware: Bool? = nil,
                serversToRestore: [ServerToRestore]? = nil
    ) {
        self.isForceServersShutdown = isForceServersShutdown
        self.mustIncludeDomainsSharingMiddleware = mustIncludeDomainsSharingMiddleware
        self.serversToRestore = serversToRestore
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RestoreWlsDomainDetails: CustomStringConvertible {
    public var description: String { "RestoreWlsDomainDetails()" }
}