const cds = require('@sap/cds');
const { Job, OpenItems } = require('#cds-models/PaymentRunService');

module.exports = class PaymentRunService extends cds.ApplicationService {
    init() {
        // this.before(['CREATE', 'UPDATE'], Job, async (req) => {
        //   console.log('Before CREATE/UPDATE Job', req.data)
        // })
        // this.after('READ', Job, async (job, req) => {
        //   console.log('After READ Job', job)
        // })

        return super.init();
    }
};
