/**
 * OCI Swift SDK Bridge
 * Handles communication between JavaScript frontend and Swift backend
 */

const OCIBridge = {
    // Store pending callbacks
    callbacks: new Map(),
    callbackId: 0,
    
    /**
     * Initialize the bridge - called when page loads
     */
    init() {
        // Check if running in WKWebView
        this.isNative = window.webkit && window.webkit.messageHandlers;
        
        // Setup message handler for native->JS communication
        if (this.isNative) {
            window.OCIJSCallback = this.handleCallback.bind(this);
        }
        
        console.log('OCI Bridge initialized. Native mode:', this.isNative);
    },
    
    /**
     * Make an API call through the Swift SDK
     * @param {string} service - OCI service name (e.g., 'core', 'objectstorage')
     * @param {string} operation - API operation (e.g., 'listInstances')
     * @param {Object} params - Request parameters
     * @returns {Promise} API response
     */
    async call(service, operation, params = {}) {
        return new Promise((resolve, reject) => {
            const id = ++this.callbackId;
            this.callbacks.set(id, { resolve, reject });
            
            const message = {
                callbackId: id,
                service,
                operation,
                params
            };
            
            if (this.isNative) {
                // Send to Swift via WKWebView
                window.webkit.messageHandlers.ociAPICall.postMessage(message);
            } else {
                // Web fallback - mock for development
                this.mockCall(service, operation, params, id);
            }
        });
    },
    
    /**
     * Handle callback from Swift
     * @param {Object} response - Response from native code
     */
    handleCallback(response) {
        const { callbackId, success, data, error } = response;
        const callback = this.callbacks.get(callbackId);
        
        if (!callback) {
            console.warn('Callback not found:', callbackId);
            return;
        }
        
        this.callbacks.delete(callbackId);
        
        if (success) {
            callback.resolve(data);
        } else {
            callback.reject(new Error(error || 'Unknown error'));
        }
    },
    
    /**
     * Authentication
     */
    auth: {
        async getConfig() {
            return OCIBridge.call('auth', 'getConfig');
        },
        
        async setConfig(config) {
            return OCIBridge.call('auth', 'setConfig', config);
        },
        
        async signRequest(request) {
            return OCIBridge.call('auth', 'signRequest', { request });
        },
        
        async testConnection(config) {
            // First set config, then test
            const saveResult = await OCIBridge.call('auth', 'setConfig', config);
            if (!saveResult.success) {
                return saveResult;
            }
            return OCIBridge.call('auth', 'testConnection');
        },
        
        async isAuthenticated() {
            try {
                const config = await this.getConfig();
                return config?.isAuthenticated || false;
            } catch {
                return false;
            }
        },
        
        async logout() {
            // Clear stored config
            localStorage.removeItem('oci-dashboard-config');
            return OCIBridge.call('auth', 'clearConfig');
        }
    },
    
    /**
     * Mock API calls for web development/testing
     */
    mockCall(service, operation, params, callbackId) {
        setTimeout(() => {
            const mockData = this.getMockData(service, operation, params);
            this.handleCallback({
                callbackId,
                success: true,
                data: mockData
            });
        }, 500); // Simulate network delay
    },
    
    getMockData(service, operation, params) {
        // Generate realistic mock data for development
        const mocks = {
            core: {
                listInstances: {
                    items: [
                        { id: 'ocid1.instance1', displayName: 'Web Server', lifecycleState: 'RUNNING', shape: 'VM.Standard2.1' },
                        { id: 'ocid1.instance2', displayName: 'Database', lifecycleState: 'RUNNING', shape: 'VM.Standard2.4' },
                        { id: 'ocid1.instance3', displayName: 'Dev Box', lifecycleState: 'STOPPED', shape: 'VM.Standard.E2.1' }
                    ]
                }
            },
            budget: {
                getCurrentSpend: {
                    amount: 45.23,
                    currency: 'USD',
                    timeRange: 'MTD'
                }
            },
            objectstorage: {
                listBuckets: {
                    items: [
                        { name: 'app-logs', namespace: 'tenant', created: '2024-01-15' },
                        { name: 'backups', namespace: 'tenant', created: '2024-01-10' },
                        { name: 'assets', namespace: 'tenant', created: '2024-01-05' }
                    ]
                }
            },
            keymanagement: {
                listVaults: {
                    items: [
                        { id: 'ocid1.vault1', displayName: 'Production Keys', lifecycleState: 'ACTIVE' },
                        { id: 'ocid1.vault2', displayName: 'Dev Keys', lifecycleState: 'ACTIVE' }
                    ]
                }
            }
        };
        
        return mocks[service]?.[operation] || { items: [] };
    }
};

// Initialize on load
document.addEventListener('DOMContentLoaded', () => {
    OCIBridge.init();
});

// Expose globally
window.OCIBridge = OCIBridge;
