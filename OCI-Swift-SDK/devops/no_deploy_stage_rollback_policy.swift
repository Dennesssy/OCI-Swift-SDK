import Foundation

// MARK: - NoDeployStageRollbackPolicy

public struct NoDeployStageRollbackPolicy: Codable, Sendable {

    public init() {}
}

extension NoDeployStageRollbackPolicy: CustomStringConvertible {
    public var description: String { "NoDeployStageRollbackPolicy()" }
}