/**
 * Authentication Page Logic
 * Handles auth form validation and Swift bridge communication
 */

const AuthPage = {
    currentTab: 'apikey',
    
    init() {
        this.setupTabs();
        this.setupForms();
        this.checkExistingAuth();
    },
    
    setupTabs() {
        document.querySelectorAll('.tab-btn').forEach(btn => {
            btn.addEventListener('click', () => {
                // Update active tab
                document.querySelectorAll('.tab-btn').forEach(b => b.classList.remove('active'));
                btn.classList.add('active');
                
                // Show corresponding form
                const tab = btn.dataset.tab;
                this.currentTab = tab;
                
                document.querySelectorAll('.auth-form').forEach(form => form.classList.remove('active'));
                document.getElementById(`${tab}-form`).classList.add('active');
                
                // Clear status
                this.hideStatus();
            });
        });
    },
    
    setupForms() {
        // API Key form
        document.getElementById('testConnection').addEventListener('click', () => {
            this.testAPIKeyConnection();
        });
        
        document.getElementById('saveCredentials').addEventListener('click', () => {
            this.saveAPIKeyAuth();
        });
        
        // Session Token form
        document.getElementById('saveToken').addEventListener('click', () => {
            this.saveSessionToken();
        });
        
        // Cloud Shell form
        document.getElementById('saveDelegation').addEventListener('click', () => {
            this.saveDelegationToken();
        });
        
        // Real-time validation
        this.setupValidation();
    },
    
    setupValidation() {
        // OCID validation
        const ocidInputs = ['tenancyOCID', 'userOCID'];
        ocidInputs.forEach(id => {
            const input = document.getElementById(id);
            if (input) {
                input.addEventListener('blur', () => {
                    const value = input.value.trim();
                    if (value && !this.validateOCID(value, id.includes('tenancy') ? 'tenancy' : 'user')) {
                        input.classList.add('input-error');
                        this.showStatus('Invalid OCID format', 'error');
                    } else {
                        input.classList.remove('input-error');
                    }
                });
            }
        });
        
        // Fingerprint validation
        const fingerprintInput = document.getElementById('fingerprint');
        if (fingerprintInput) {
            fingerprintInput.addEventListener('blur', () => {
                const value = fingerprintInput.value.trim();
                if (value && !this.validateFingerprint(value)) {
                    fingerprintInput.classList.add('input-error');
                    this.showStatus('Invalid fingerprint format (expected: aa:bb:cc:...)', 'error');
                } else {
                    fingerprintInput.classList.remove('input-error');
                }
            });
        }
    },
    
    validateOCID(ocid, type) {
        // OCI OCID format: ocid1.<type>.<realm>.<region>.<future>.<unique_id>
        const pattern = new RegExp(`^ocid1\\.${type}\\.oc[12]\\.[a-z0-9-]+\\.[a-z0-9]+\\.[a-z0-9]+$`, 'i');
        return pattern.test(ocid);
    },
    
    validateFingerprint(fingerprint) {
        // MD5 fingerprint format: aa:bb:cc:dd:ee:ff:...
        const pattern = /^[a-f0-9]{2}(:[a-f0-9]{2}){15}$/i;
        return pattern.test(fingerprint);
    },
    
    async testAPIKeyConnection() {
        const config = this.getAPIKeyConfig();
        if (!config) return;
        
        this.showStatus('Testing connection...', 'loading');
        
        try {
            // Test connection via Swift bridge
            const result = await OCIBridge.auth.testConnection(config);
            
            if (result.success) {
                this.showStatus(`✓ Connection successful! Tenancy: ${result.tenancyName}`, 'success');
            } else {
                this.showStatus(`✗ Connection failed: ${result.error}`, 'error');
            }
        } catch (error) {
            this.showStatus(`✗ Error: ${error.message}`, 'error');
        }
    },
    
    async saveAPIKeyAuth() {
        const config = this.getAPIKeyConfig();
        if (!config) return;
        
        this.showStatus('Saving credentials...', 'loading');
        
        try {
            const result = await OCIBridge.auth.setConfig({
                ...config,
                authType: 'apiKey'
            });
            
            if (result.success) {
                this.showStatus('✓ Authentication configured successfully!', 'success');
                
                // Redirect to dashboard after short delay
                setTimeout(() => {
                    window.location.href = 'index.html';
                }, 1500);
            } else {
                this.showStatus(`✗ Failed to save: ${result.error}`, 'error');
            }
        } catch (error) {
            this.showStatus(`✗ Error: ${error.message}`, 'error');
        }
    },
    
    getAPIKeyConfig() {
        const tenancyOCID = document.getElementById('tenancyOCID').value.trim();
        const userOCID = document.getElementById('userOCID').value.trim();
        const region = document.getElementById('region').value;
        const fingerprint = document.getElementById('fingerprint').value.trim();
        const privateKey = document.getElementById('privateKey').value.trim();
        const passphrase = document.getElementById('passphrase').value;
        
        // Validate required fields
        const required = [
            { field: tenancyOCID, name: 'Tenancy OCID' },
            { field: userOCID, name: 'User OCID' },
            { field: region, name: 'Region' },
            { field: fingerprint, name: 'Key Fingerprint' },
            { field: privateKey, name: 'Private Key' }
        ];
        
        for (const { field, name } of required) {
            if (!field) {
                this.showStatus(`✗ ${name} is required`, 'error');
                return null;
            }
        }
        
        // Validate OCID formats
        if (!this.validateOCID(tenancyOCID, 'tenancy')) {
            this.showStatus('✗ Invalid Tenancy OCID format', 'error');
            document.getElementById('tenancyOCID').classList.add('input-error');
            return null;
        }
        
        if (!this.validateOCID(userOCID, 'user')) {
            this.showStatus('✗ Invalid User OCID format', 'error');
            document.getElementById('userOCID').classList.add('input-error');
            return null;
        }
        
        if (!this.validateFingerprint(fingerprint)) {
            this.showStatus('✗ Invalid fingerprint format', 'error');
            document.getElementById('fingerprint').classList.add('input-error');
            return null;
        }
        
        // Validate private key format
        const hasValidKey = privateKey.includes('BEGIN') && privateKey.includes('PRIVATE KEY');
        if (!hasValidKey) {
            this.showStatus('✗ Private key must be in PEM format', 'error');
            return null;
        }
        
        return {
            tenancyOCID,
            userOCID,
            region,
            fingerprint,
            privateKey,
            passphrase: passphrase || null
        };
    },
    
    async saveSessionToken() {
        const token = document.getElementById('sessionToken').value.trim();
        const region = document.getElementById('tokenRegion').value;
        
        if (!token) {
            this.showStatus('✗ Session token is required', 'error');
            return;
        }
        
        if (!region) {
            this.showStatus('✗ Region is required', 'error');
            return;
        }
        
        this.showStatus('Saving session token...', 'loading');
        
        try {
            const result = await OCIBridge.auth.setConfig({
                sessionToken: token,
                region: region,
                authType: 'sessionToken'
            });
            
            if (result.success) {
                this.showStatus('✓ Session token saved!', 'success');
                setTimeout(() => {
                    window.location.href = 'index.html';
                }, 1500);
            } else {
                this.showStatus(`✗ Failed: ${result.error}`, 'error');
            }
        } catch (error) {
            this.showStatus(`✗ Error: ${error.message}`, 'error');
        }
    },
    
    async saveDelegationToken() {
        const token = document.getElementById('delegationToken').value.trim();
        
        if (!token) {
            this.showStatus('✗ Delegation token is required', 'error');
            return;
        }
        
        this.showStatus('Saving delegation token...', 'loading');
        
        try {
            const result = await OCIBridge.auth.setConfig({
                delegationToken: token,
                authType: 'delegationToken'
            });
            
            if (result.success) {
                this.showStatus('✓ Delegation token saved!', 'success');
                setTimeout(() => {
                    window.location.href = 'index.html';
                }, 1500);
            } else {
                this.showStatus(`✗ Failed: ${result.error}`, 'error');
            }
        } catch (error) {
            this.showStatus(`✗ Error: ${error.message}`, 'error');
        }
    },
    
    async checkExistingAuth() {
        try {
            const config = await OCIBridge.auth.getConfig();
            if (config && (config.tenancyOCID || config.sessionToken)) {
                // Already authenticated - redirect to dashboard
                window.location.href = 'index.html';
            }
        } catch (error) {
            // No existing auth - stay on auth page
            console.log('No existing authentication found');
        }
    },
    
    showStatus(message, type) {
        const status = document.getElementById('authStatus');
        status.textContent = message;
        status.className = `auth-status active ${type}`;
    },
    
    hideStatus() {
        const status = document.getElementById('authStatus');
        status.className = 'auth-status';
    }
};

// Initialize
document.addEventListener('DOMContentLoaded', () => {
    AuthPage.init();
});

// Expose globally
window.AuthPage = AuthPage;
