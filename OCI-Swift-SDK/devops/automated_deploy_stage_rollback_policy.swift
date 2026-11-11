import Foundation

// MARK: - AutomatedDeployStageRollbackPolicy

public struct AutomatedDeployStageRollbackPolicy: Codable, Sendable {

    public init() {}
}

extension AutomatedDeployStageRollbackPolicy: CustomStringConvertible {
    public var description: String { "AutomatedDeployStageRollbackPolicy()" }
}