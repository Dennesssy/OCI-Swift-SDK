import Foundation

// MARK: - OperationTypeEnum

public enum OperationTypeEnum: String, Codable, Sendable {
    case createAgent = "CREATE_AGENT"
    case updateAgent = "UPDATE_AGENT"
    case deleteAgent = "DELETE_AGENT"
    case moveAgent = "MOVE_AGENT"
    case createAgentEndpoint = "CREATE_AGENT_ENDPOINT"
    case updateAgentEndpoint = "UPDATE_AGENT_ENDPOINT"
    case deleteAgentEndpoint = "DELETE_AGENT_ENDPOINT"
    case moveAgentEndpoint = "MOVE_AGENT_ENDPOINT"
    case createDataSource = "CREATE_DATA_SOURCE"
    case updateDataSource = "UPDATE_DATA_SOURCE"
    case deleteDataSource = "DELETE_DATA_SOURCE"
    case createKnowledgeBase = "CREATE_KNOWLEDGE_BASE"
    case updateKnowledgeBase = "UPDATE_KNOWLEDGE_BASE"
    case deleteKnowledgeBase = "DELETE_KNOWLEDGE_BASE"
    case moveKnowledgeBase = "MOVE_KNOWLEDGE_BASE"
    case createDataIngestionJob = "CREATE_DATA_INGESTION_JOB"
    case deleteDataIngestionJob = "DELETE_DATA_INGESTION_JOB"
    case createTool = "CREATE_TOOL"
    case updateTool = "UPDATE_TOOL"
    case deleteTool = "DELETE_TOOL"
    case createProvisionedCapacity = "CREATE_PROVISIONED_CAPACITY"
    case updateProvisionedCapacity = "UPDATE_PROVISIONED_CAPACITY"
    case deleteProvisionedCapacity = "DELETE_PROVISIONED_CAPACITY"
    case moveProvisionedCapacity = "MOVE_PROVISIONED_CAPACITY"
    case createFlow = "CREATE_FLOW"
    case updateFlow = "UPDATE_FLOW"
    case deleteFlow = "DELETE_FLOW"
}

public extension OperationTypeEnum {
    static var allValues: [OperationTypeEnum] { [.createAgent, .updateAgent, .deleteAgent, .moveAgent, .createAgentEndpoint, .updateAgentEndpoint, .deleteAgentEndpoint, .moveAgentEndpoint, .createDataSource, .updateDataSource, .deleteDataSource, .createKnowledgeBase, .updateKnowledgeBase, .deleteKnowledgeBase, .moveKnowledgeBase, .createDataIngestionJob, .deleteDataIngestionJob, .createTool, .updateTool, .deleteTool, .createProvisionedCapacity, .updateProvisionedCapacity, .deleteProvisionedCapacity, .moveProvisionedCapacity, .createFlow, .updateFlow, .deleteFlow] }
    static var allStringValues: [String] { ["CREATE_AGENT", "UPDATE_AGENT", "DELETE_AGENT", "MOVE_AGENT", "CREATE_AGENT_ENDPOINT", "UPDATE_AGENT_ENDPOINT", "DELETE_AGENT_ENDPOINT", "MOVE_AGENT_ENDPOINT", "CREATE_DATA_SOURCE", "UPDATE_DATA_SOURCE", "DELETE_DATA_SOURCE", "CREATE_KNOWLEDGE_BASE", "UPDATE_KNOWLEDGE_BASE", "DELETE_KNOWLEDGE_BASE", "MOVE_KNOWLEDGE_BASE", "CREATE_DATA_INGESTION_JOB", "DELETE_DATA_INGESTION_JOB", "CREATE_TOOL", "UPDATE_TOOL", "DELETE_TOOL", "CREATE_PROVISIONED_CAPACITY", "UPDATE_PROVISIONED_CAPACITY", "DELETE_PROVISIONED_CAPACITY", "MOVE_PROVISIONED_CAPACITY", "CREATE_FLOW", "UPDATE_FLOW", "DELETE_FLOW"] }
    static func fromString(_ value: String) -> OperationTypeEnum? { OperationTypeEnum(rawValue: value) }
}