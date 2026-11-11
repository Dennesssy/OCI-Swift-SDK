import Foundation

// MARK: - batchtasksummary

public struct batchtasksummary: Codable, Sendable {

    public var jsonData: Data?
    public var hierarchicalName: String?
    public var groupTaskName: String?
    public var description: String?
    public var lifecycleState: BatchTaskLifecycleStateEnum?
    public var lifecycleDetails: String?
    public var id: String?
    public var jobId: String?
    public var name: String?
    public var type: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, hierarchicalName, groupTaskName, description, lifecycleState, lifecycleDetails, id, jobId, name, type
    }

    public init(
                jsonData: Data? = nil,
                hierarchicalName: String? = nil,
                groupTaskName: String? = nil,
                description: String? = nil,
                lifecycleState: BatchTaskLifecycleStateEnum? = nil,
                lifecycleDetails: String? = nil,
                id: String? = nil,
                jobId: String? = nil,
                name: String? = nil,
                type: String? = nil
    ) {
        self.jsonData = jsonData
        self.hierarchicalName = hierarchicalName
        self.groupTaskName = groupTaskName
        self.description = description
        self.lifecycleState = lifecycleState
        self.lifecycleDetails = lifecycleDetails
        self.id = id
        self.jobId = jobId
        self.name = name
        self.type = type
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
