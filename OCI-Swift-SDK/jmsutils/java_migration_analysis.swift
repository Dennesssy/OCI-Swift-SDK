import Foundation

// MARK: - JavaMigrationAnalysis

public struct JavaMigrationAnalysis: Codable, Sendable {

    public var id: String?
    public var workRequestId: String?
    public var compartmentId: String?
    public var analysisProjectName: String?
    public var inputApplicationsObjectStoragePaths: [String]
    public var targetJdkVersion: String?
    public var namespaceName: String?
    public var bucketName: String?
    public var analysisResultObjectStoragePath: String?
    public var analysisResultFiles: [String]
    public var timeCreated: Date?
    public var timeStarted: Date?
    public var timeFinished: Date?
    public var createdBy: Principal?
    public var metadata: String?

    private enum CodingKeys: String, CodingKey {
        case id, workRequestId, compartmentId, analysisProjectName, inputApplicationsObjectStoragePaths, targetJdkVersion, namespaceName, bucketName, analysisResultObjectStoragePath, analysisResultFiles, timeCreated, timeStarted, timeFinished, createdBy, metadata
    }

    public init(
                id: String? = nil,
                workRequestId: String? = nil,
                compartmentId: String? = nil,
                analysisProjectName: String? = nil,
                inputApplicationsObjectStoragePaths: [String],
                targetJdkVersion: String? = nil,
                namespaceName: String? = nil,
                bucketName: String? = nil,
                analysisResultObjectStoragePath: String? = nil,
                analysisResultFiles: [String],
                timeCreated: Date? = nil,
                timeStarted: Date? = nil,
                timeFinished: Date? = nil,
                createdBy: Principal? = nil,
                metadata: String? = nil
    ) {
        self.id = id
        self.workRequestId = workRequestId
        self.compartmentId = compartmentId
        self.analysisProjectName = analysisProjectName
        self.inputApplicationsObjectStoragePaths = inputApplicationsObjectStoragePaths
        self.targetJdkVersion = targetJdkVersion
        self.namespaceName = namespaceName
        self.bucketName = bucketName
        self.analysisResultObjectStoragePath = analysisResultObjectStoragePath
        self.analysisResultFiles = analysisResultFiles
        self.timeCreated = timeCreated
        self.timeStarted = timeStarted
        self.timeFinished = timeFinished
        self.createdBy = createdBy
        self.metadata = metadata
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension JavaMigrationAnalysis: CustomStringConvertible {
    public var description: String { "JavaMigrationAnalysis()" }
}