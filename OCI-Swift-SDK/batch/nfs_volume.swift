import Foundation

// MARK: - NfsVolume

public struct NfsVolume: Codable, Sendable {

    public var name: String?
    public var mountTargetFqdn: String?
    public var mountTargetExportPath: String?
    public var localMountDirectoryPath: String?

    private enum CodingKeys: String, CodingKey {
        case name, mountTargetFqdn, mountTargetExportPath, localMountDirectoryPath
    }

    public init(
                name: String? = nil,
                mountTargetFqdn: String? = nil,
                mountTargetExportPath: String? = nil,
                localMountDirectoryPath: String? = nil
    ) {
        self.name = name
        self.mountTargetFqdn = mountTargetFqdn
        self.mountTargetExportPath = mountTargetExportPath
        self.localMountDirectoryPath = localMountDirectoryPath
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension NfsVolume: CustomStringConvertible {
    public var description: String { "NfsVolume()" }
}