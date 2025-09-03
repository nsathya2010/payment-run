sap.ui.define(
    [
        'sap/fe/test/JourneyRunner',
        'paymentrun/test/integration/pages/JobsList',
        'paymentrun/test/integration/pages/JobsObjectPage',
        'paymentrun/test/integration/pages/OpenItemsObjectPage',
    ],
    function (JourneyRunner, JobsList, JobsObjectPage, OpenItemsObjectPage) {
        'use strict';

        var runner = new JourneyRunner({
            launchUrl: sap.ui.require.toUrl('paymentrun') + '/index.html',
            pages: {
                onTheJobsList: JobsList,
                onTheJobsObjectPage: JobsObjectPage,
                onTheOpenItemsObjectPage: OpenItemsObjectPage,
            },
            async: true,
        });

        return runner;
    },
);
