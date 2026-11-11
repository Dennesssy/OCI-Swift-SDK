import Foundation

// MARK: - FileStorageMountDetails

public struct FileStorageMountDetails: Codable, Sendable {

    public var mountPath: String?
    public var mountTargetId: String?
    public var exportId: String?

    private enum CodingKeys: String, CodingKey {
        case mountPath, mountTargetId, exportId
    }

    public init(
                mountPath: String? = nil,
                mountTargetId: String? = nil,
                exportId: String? = nil
    ) {
        self.mountPath = mountPath
        self.mountTargetId = mountTargetId
        self.exportId = exportId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension FileStorageMountDetails: CustomStringConvertible {
    public var description: String { "FileStorageMountDetails()" }
}