/**
 * Email Delivery Service Module
 * Handles OCI Email Delivery (SMTP credentials, approved senders)
 */

const EmailService = {
    // Approved Senders
    async listApprovedSenders(compartmentId) {
        try {
            const response = await OCIBridge.call('email', 'listSuppression', { compartmentId });
            // Note: OCI Email uses suppressions list
            return response.items || [];
        } catch (error) {
            console.error('Failed to list approved senders:', error);
            return [];
        }
    },
    
    async createApprovedSender(config) {
        try {
            const response = await OCIBridge.call('email', 'createSender', config);
            return response;
        } catch (error) {
            console.error('Failed to create approved sender:', error);
            throw error;
        }
    },
    
    async deleteApprovedSender(senderId) {
        try {
            await OCIBridge.call('email', 'deleteSender', { senderId });
            return true;
        } catch (error) {
            console.error('Failed to delete approved sender:', error);
            throw error;
        }
    },
    
    // SMTP Credentials
    async listSmtpCredentials(userId) {
        try {
            const response = await OCIBridge.call('identity', 'listSmtpCredentials', { userId });
            return response.items || [];
        } catch (error) {
            console.error('Failed to list SMTP credentials:', error);
            return [];
        }
    },
    
    async createSmtpCredential(userId, description) {
        try {
            const response = await OCIBridge.call('identity', 'createSmtpCredential', {
                userId,
                description
            });
            return response;
        } catch (error) {
            console.error('Failed to create SMTP credential:', error);
            throw error;
        }
    },
    
    async deleteSmtpCredential(userId, smtpCredentialId) {
        try {
            await OCIBridge.call('identity', 'deleteSmtpCredential', {
                userId,
                smtpCredentialId
            });
            return true;
        } catch (error) {
            console.error('Failed to delete SMTP credential:', error);
            throw error;
        }
    },
    
    // Suppressions
    async listSuppressions(compartmentId, options = {}) {
        try {
            const response = await OCIBridge.call('email', 'listSuppressions', {
                compartmentId,
                ...options
            });
            return response.items || [];
        } catch (error) {
            console.error('Failed to list suppressions:', error);
            return [];
        }
    },
    
    async createSuppression(config) {
        try {
            const response = await OCIBridge.call('email', 'createSuppression', config);
            return response;
        } catch (error) {
            console.error('Failed to create suppression:', error);
            throw error;
        }
    },
    
    async deleteSuppression(suppressionId) {
        try {
            await OCIBridge.call('email', 'deleteSuppression', { suppressionId });
            return true;
        } catch (error) {
            console.error('Failed to delete suppression:', error);
            throw error;
        }
    },
    
    // Email Statistics
    async getEmailStats(compartmentId, startTime, endTime) {
        try {
            // This would typically use monitoring metrics
            // For now, return mock data structure
            return {
                sent: 0,
                bounced: 0,
                complained: 0,
                suppressed: 0
            };
        } catch (error) {
            console.error('Failed to get email stats:', error);
            return null;
        }
    },
    
    // DKIM
    async listDkim(compartmentId) {
        try {
            const response = await OCIBridge.call('email', 'listDkim', { compartmentId });
            return response.items || [];
        } catch (error) {
            console.error('Failed to list DKIM:', error);
            return [];
        }
    },
    
    async createDkim(config) {
        try {
            const response = await OCIBridge.call('email', 'createDkim', config);
            return response;
        } catch (error) {
            console.error('Failed to create DKIM:', error);
            throw error;
        }
    },
    
    // Helper methods
    getSmtpConfig(region = 'us-ashburn-1') {
        const endpoints = {
            'us-ashburn-1': 'smtp.email.us-ashburn-1.oci.oraclecloud.com',
            'us-phoenix-1': 'smtp.email.us-phoenix-1.oci.oraclecloud.com',
            'eu-frankfurt-1': 'smtp.email.eu-frankfurt-1.oci.oraclecloud.com',
            'uk-london-1': 'smtp.email.uk-london-1.oci.oraclecloud.com',
            'ap-tokyo-1': 'smtp.email.ap-tokyo-1.oci.oraclecloud.com',
            'ap-sydney-1': 'smtp.email.ap-sydney-1.oci.oraclecloud.com'
        };
        
        return {
            host: endpoints[region] || endpoints['us-ashburn-1'],
            port: 587,
            secure: true,
            region: region
        };
    },
    
    formatSuppressionReason(reason) {
        const reasons = {
            'UNKNOWN': 'Unknown',
            'HARDBOUNCE': 'Hard Bounce',
            'COMPLAINT': 'Spam Complaint',
            'MANUAL': 'Manual',
            'SOFTBOUNCE': 'Soft Bounce',
            'UNSUBSCRIBE': 'Unsubscribe'
        };
        return reasons[reason] || reason;
    },
    
    getEmailHealthScore(sent, bounced, suppressed) {
        if (sent === 0) return 100;
        const bounceRate = (bounced / sent) * 100;
        const suppressRate = (suppressed / sent) * 100;
        
        if (bounceRate > 5 || suppressRate > 1) return 40;
        if (bounceRate > 2 || suppressRate > 0.5) return 70;
        return 95;
    }
};

window.EmailService = EmailService;
