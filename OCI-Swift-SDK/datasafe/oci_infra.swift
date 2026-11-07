// Infrastructure placeholders for generated OCI Swift SDK service modules.
// These mirror the types the Go->Swift generator expects from a shared runtime.
import Foundation

public protocol ClientProtocol: Sendable {}

public struct Region: Sendable, Equatable {
    public var regionId: String
    public init(regionId: String = "") { self.regionId = regionId }
}

public protocol Signer: Sendable {}

public struct HTTPClient: Sendable {
    public init() {}
}
