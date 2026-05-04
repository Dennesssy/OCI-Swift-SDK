/**
 * Dashboard Cards System
 * Manages card definitions, rendering, and interactions
 */

const CardsSystem = {
    // Card definitions by category
    cardDefinitions: {
        // Developers
        'compute-instances': {
            category: 'dev',
            title: 'Compute Instances',
            icon: '💻',
            description: 'VMs and bare metal',
            refreshInterval: 60,
            actions: [
                { label: 'Start All', action: 'startAll' },
                { label: 'View', action: 'navigate' }
            ]
        },
        'quick-provision': {
            category: 'dev',
            title: 'Quick Provision',
            icon: '⚡',
            description: 'Deploy resources fast',
            refreshInterval: 0,
            actions: [
                { label: 'Templates', action: 'templates' },
                { label: 'Custom', action: 'custom' }
            ]
        },
        'api-services': {
            category: 'dev',
            title: 'API Services',
            icon: '🔌',
            description: 'Enable OCI APIs',
            refreshInterval: 600,
            actions: [
                { label: 'Enable', action: 'enable' },
                { label: 'Status', action: 'status' }
            ]
        },
        'object-storage': {
            category: 'dev',
            title: 'Object Storage',
            icon: '🪣',
            description: 'Buckets and objects',
            refreshInterval: 120,
            actions: [
                { label: 'Upload', action: 'upload' },
                { label: 'Browse', action: 'navigate' }
            ]
        },
        'kubernetes': {
            category: 'dev',
            title: 'Kubernetes',
            icon: '☸️',
            description: 'OKE clusters',
            refreshInterval: 60,
            actions: [
                { label: 'Scale', action: 'scale' },
                { label: 'View', action: 'navigate' }
            ]
        },
        'functions': {
            category: 'dev',
            title: 'Functions',
            icon: '⚡',
            description: 'Serverless functions',
            refreshInterval: 300,
            actions: [
                { label: 'Invoke', action: 'invoke' },
                { label: 'Deploy', action: 'deploy' }
            ]
        },
        
        // Enterprise
        'cost-overview': {
            category: 'enterprise',
            title: 'Cost Overview',
            icon: '💰',
            description: 'Spending and budgets',
            refreshInterval: 300,
            actions: [
                { label: 'Details', action: 'details' },
                { label: 'Alerts', action: 'alerts' },
                { label: 'Forecast', action: 'forecast' }
            ]
        },
        'budgets': {
            category: 'enterprise',
            title: 'Budgets',
            icon: '📊',
            description: 'Budgets and alerts',
            refreshInterval: 600,
            actions: [
                { label: 'Create', action: 'create' },
                { label: 'View All', action: 'navigate' }
            ]
        },
        'invoices': {
            category: 'enterprise',
            title: 'Invoices',
            icon: '🧾',
            description: 'Billing and invoices',
            refreshInterval: 3600,
            actions: [
                { label: 'Download', action: 'download' },
                { label: 'History', action: 'history' }
            ]
        },
        'usage-by-service': {
            category: 'enterprise',
            title: 'Usage by Service',
            icon: '📈',
            description: 'Cost breakdown',
            refreshInterval: 300,
            actions: [
                { label: 'Analyze', action: 'analyze' },
                { label: 'Export', action: 'export' }
            ]
        },
        'databases': {
            category: 'enterprise',
            title: 'Databases',
            icon: '🗄️',
            description: 'ADB, MySQL, PostgreSQL',
            refreshInterval: 60,
            actions: [
                { label: 'Scale', action: 'scale' },
                { label: 'Backup', action: 'backup' }
            ]
        },
        'load-balancers': {
            category: 'enterprise',
            title: 'Load Balancers',
            icon: '⚖️',
            description: 'LBaaS and NLB',
            refreshInterval: 60,
            actions: [
                { label: 'Stats', action: 'stats' },
                { label: 'Config', action: 'config' }
            ]
        },
        'dns': {
            category: 'enterprise',
            title: 'DNS',
            icon: '🌐',
            description: 'Zones and records',
            refreshInterval: 600,
            actions: [
                { label: 'Add Record', action: 'addRecord' },
                { label: 'Zones', action: 'navigate' }
            ]
        },
        
        // AI/ML
        'generative-ai': {
            category: 'ai',
            title: 'Generative AI',
            icon: '🤖',
            description: 'Cohere, LLaMA models',
            refreshInterval: 300,
            actions: [
                { label: 'Playground', action: 'playground' },
                { label: 'Endpoints', action: 'endpoints' }
            ]
        },
        'data-science': {
            category: 'ai',
            title: 'Data Science',
            icon: '📊',
            description: 'Notebooks and jobs',
            refreshInterval: 120,
            actions: [
                { label: 'Notebooks', action: 'notebooks' },
                { label: 'Jobs', action: 'jobs' }
            ]
        },
        'ai-vision': {
            category: 'ai',
            title: 'AI Vision',
            icon: '👁️',
            description: 'Image analysis',
            refreshInterval: 300,
            actions: [
                { label: 'Analyze', action: 'analyze' },
                { label: 'History', action: 'history' }
            ]
        },
        
        // Security
        'vault-keys': {
            category: 'security',
            title: 'Vault & Keys',
            icon: '🔐',
            description: 'KMS and secrets',
            refreshInterval: 600,
            actions: [
                { label: 'Rotate', action: 'rotate' },
                { label: 'View', action: 'navigate' }
            ]
        },
        'cloud-guard': {
            category: 'security',
            title: 'Cloud Guard',
            icon: '🛡️',
            description: 'Threat detection',
            refreshInterval: 60,
            actions: [
                { label: 'Targets', action: 'targets' },
                { label: 'Alerts', action: 'alerts' }
            ]
        },
        'iam-users': {
            category: 'security',
            title: 'IAM Users',
            icon: '👥',
            description: 'Identity management',
            refreshInterval: 300,
            actions: [
                { label: 'Add User', action: 'addUser' },
                { label: 'View All', action: 'navigate' }
            ]
        },
        'iam-groups': {
            category: 'security',
            title: 'IAM Groups',
            icon: '👨‍👩‍👧‍👦',
            description: 'Group management',
            refreshInterval: 300,
            actions: [
                { label: 'Create', action: 'create' },
                { label: 'Manage', action: 'manage' }
            ]
        },
        'iam-policies': {
            category: 'security',
            title: 'IAM Policies',
            icon: '📋',
            description: 'Access policies',
            refreshInterval: 600,
            actions: [
                { label: 'Create', action: 'create' },
                { label: 'Validate', action: 'validate' }
            ]
        },
        'compartments': {
            category: 'security',
            title: 'Compartments',
            icon: '📦',
            description: 'Resource organization',
            refreshInterval: 600,
            actions: [
                { label: 'Create', action: 'create' },
                { label: 'Tree View', action: 'tree' }
            ]
        },
        'certificates': {
            category: 'security',
            title: 'Certificates',
            icon: '📜',
            description: 'SSL/TLS certs',
            refreshInterval: 3600,
            actions: [
                { label: 'Renew', action: 'renew' },
                { label: 'View', action: 'navigate' }
            ]
        },
        'secrets': {
            category: 'security',
            title: 'Secrets',
            icon: '🤫',
            description: 'Vault secrets & versions',
            refreshInterval: 600,
            actions: [
                { label: 'Create', action: 'create' },
                { label: 'Rotate', action: 'rotate' }
            ]
        },
        
        // Operations
        'notifications': {
            category: 'operations',
            title: 'Notifications',
            icon: '🔔',
            description: 'Alerts and topics',
            refreshInterval: 60,
            actions: [
                { label: 'Topics', action: 'topics' },
                { label: 'Subscribe', action: 'subscribe' }
            ]
        },
        'alarms': {
            category: 'operations',
            title: 'Alarms',
            icon: '🚨',
            description: 'Monitoring alarms',
            refreshInterval: 60,
            actions: [
                { label: 'History', action: 'history' },
                { label: 'Create', action: 'create' }
            ]
        },
        'limits': {
            category: 'operations',
            title: 'Service Limits',
            icon: '📏',
            description: 'Quotas and usage',
            refreshInterval: 3600,
            actions: [
                { label: 'Request Increase', action: 'request' },
                { label: 'Quotas', action: 'quotas' }
            ]
        },
        'email': {
            category: 'operations',
            title: 'Email Delivery',
            icon: '📧',
            description: 'SMTP and senders',
            refreshInterval: 600,
            actions: [
                { label: 'Senders', action: 'senders' },
                { label: 'SMTP', action: 'smtp' }
            ]
        },
        'resource-manager': {
            category: 'operations',
            title: 'Resource Manager',
            icon: '🏗️',
            description: 'Terraform stacks',
            refreshInterval: 300,
            actions: [
                { label: 'Stacks', action: 'stacks' },
                { label: 'Apply', action: 'apply' }
            ]
        }
    },
    
    // User's dashboard configuration
    dashboardConfig: [],
    
    /**
     * Initialize cards system
     */
    init() {
        this.loadDashboardConfig();
        this.renderDashboard();
        this.startAutoRefresh();
    },
    
    /**
     * Load user's dashboard configuration
     */
    loadDashboardConfig() {
        // Load from localStorage or use defaults
        const saved = localStorage.getItem('oci-dashboard-config');
        
        if (saved) {
            this.dashboardConfig = JSON.parse(saved);
        } else {
            // Default cards for new users
            this.dashboardConfig = [
                { id: 'compute-instances', size: 'medium', position: 0 },
                { id: 'cost-overview', size: 'medium', position: 1 },
                { id: 'object-storage', size: 'medium', position: 2 },
                { id: 'vault-keys', size: 'medium', position: 3 }
            ];
            this.saveDashboardConfig();
        }
    },
    
    /**
     * Save dashboard configuration
     */
    saveDashboardConfig() {
        localStorage.setItem('oci-dashboard-config', JSON.stringify(this.dashboardConfig));
    },
    
    /**
     * Render the dashboard grid
     */
    renderDashboard() {
        const grid = document.getElementById('cardsGrid');
        const emptyState = document.getElementById('emptyState');
        
        if (this.dashboardConfig.length === 0) {
            grid.style.display = 'none';
            emptyState.style.display = 'flex';
            return;
        }
        
        grid.style.display = 'grid';
        emptyState.style.display = 'none';
        
        grid.innerHTML = this.dashboardConfig
            .sort((a, b) => a.position - b.position)
            .map(config => this.renderCard(config))
            .join('');
        
        // Attach event listeners
        this.attachCardListeners();
    },
    
    /**
     * Render a single card
     */
    renderCard(config) {
        const definition = this.cardDefinitions[config.id];
        if (!definition) return '';
        
        const { category, title, icon, description, actions } = definition;
        
        return `
            <div class="card ${category}" data-card-id="${config.id}" data-category="${category}">
                <div class="card-header">
                    <div class="card-title">
                        <div class="card-icon">${icon}</div>
                        <div class="card-info">
                            <h3>${title}</h3>
                            <span>${description}</span>
                        </div>
                    </div>
                    <button class="card-menu" data-action="menu">⋮</button>
                </div>
                <div class="card-widget" id="widget-${config.id}">
                    <div class="animate-pulse">Loading...</div>
                </div>
                <div class="card-actions">
                    ${actions.map(action => `
                        <button data-action="${action.action}" data-card="${config.id}">
                            ${action.label}
                        </button>
                    `).join('')}
                </div>
            </div>
        `;
    },
    
    /**
     * Attach event listeners to cards
     */
    attachCardListeners() {
        // Card click to expand
        document.querySelectorAll('.card').forEach(card => {
            card.addEventListener('click', (e) => {
                if (!e.target.closest('button')) {
                    const cardId = card.dataset.cardId;
                    this.expandCard(cardId);
                }
            });
        });
        
        // Action buttons
        document.querySelectorAll('.card-actions button').forEach(btn => {
            btn.addEventListener('click', (e) => {
                e.stopPropagation();
                const action = btn.dataset.action;
                const cardId = btn.dataset.card;
                this.handleAction(action, cardId);
            });
        });
    },
    
    /**
     * Handle card action
     */
    handleAction(action, cardId) {
        console.log('Action:', action, 'Card:', cardId);
        
        // Emit event for service modules
        const event = new CustomEvent('cardAction', {
            detail: { action, cardId }
        });
        document.dispatchEvent(event);
    },
    
    /**
     * Expand card to full view
     */
    expandCard(cardId) {
        const event = new CustomEvent('expandCard', {
            detail: { cardId }
        });
        document.dispatchEvent(event);
    },
    
    /**
     * Add card to dashboard
     */
    addCard(cardId) {
        if (this.dashboardConfig.find(c => c.id === cardId)) {
            console.log('Card already exists:', cardId);
            return;
        }
        
        this.dashboardConfig.push({
            id: cardId,
            size: 'medium',
            position: this.dashboardConfig.length
        });
        
        this.saveDashboardConfig();
        this.renderDashboard();
        this.refreshCard(cardId);
    },
    
    /**
     * Remove card from dashboard
     */
    removeCard(cardId) {
        this.dashboardConfig = this.dashboardConfig.filter(c => c.id !== cardId);
        this.saveDashboardConfig();
        this.renderDashboard();
    },
    
    /**
     * Refresh a single card's data
     */
    async refreshCard(cardId) {
        const widget = document.getElementById(`widget-${cardId}`);
        if (!widget) return;
        
        const event = new CustomEvent('refreshCard', {
            detail: { cardId, widget }
        });
        document.dispatchEvent(event);
    },
    
    /**
     * Start auto-refresh for all cards
     */
    startAutoRefresh() {
        // Refresh each card based on its interval
        this.dashboardConfig.forEach(config => {
            const definition = this.cardDefinitions[config.id];
            if (definition) {
                setInterval(() => {
                    this.refreshCard(config.id);
                }, definition.refreshInterval * 1000);
            }
        });
    },
    
    /**
     * Filter cards by category
     */
    filterByCategory(category) {
        const cards = document.querySelectorAll('.card');
        cards.forEach(card => {
            if (category === 'all' || card.dataset.category === category) {
                card.style.display = 'block';
            } else {
                card.style.display = 'none';
            }
        });
    },
    
    /**
     * Get available cards for adding
     */
    getAvailableCards() {
        const used = new Set(this.dashboardConfig.map(c => c.id));
        return Object.entries(this.cardDefinitions)
            .filter(([id]) => !used.has(id))
            .map(([id, def]) => ({ id, ...def }));
    }
};

// Initialize
document.addEventListener('DOMContentLoaded', () => {
    CardsSystem.init();
});

// Expose globally
window.CardsSystem = CardsSystem;
