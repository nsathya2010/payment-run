sap.ui.define(['sap/ui/test/opaQunit', './pages/JourneyRunner'], function (opaTest, runner) {
    'use strict';

    function journey() {
        QUnit.module('First journey');

        opaTest('Start application', function (Given, When, Then) {
            Given.iStartMyApp();

            Then.onTheJobsList.iSeeThisPage();
        });

        opaTest('Navigate to ObjectPage', function (Given, When, Then) {
            // Note: this test will fail if the ListReport page doesn't show any data

            When.onTheJobsList.onFilterBar().iExecuteSearch();

            Then.onTheJobsList.onTable().iCheckRows();

            When.onTheJobsList.onTable().iPressRow(0);
            Then.onTheJobsObjectPage.iSeeThisPage();
        });

        opaTest('Teardown', function (Given, When, Then) {
            // Cleanup
            Given.iTearDownMyApp();
        });
    }

    runner.run([journey]);
});
