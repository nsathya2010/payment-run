sap.ui.define(
    ['sap/fe/test/JourneyRunner', 'paymentdashboard/test/integration/pages/JobsMain'],
    function (JourneyRunner, JobsMain) {
        'use strict';

        var runner = new JourneyRunner({
            launchUrl: sap.ui.require.toUrl('paymentdashboard') + '/index.html',
            pages: {
                onTheJobsMain: JobsMain,
            },
            async: true,
        });

        return runner;
    },
);
