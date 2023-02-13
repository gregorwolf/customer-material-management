sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'demo/customermaterial/test/integration/FirstJourney',
		'demo/customermaterial/test/integration/pages/A_CustomerMaterialList',
		'demo/customermaterial/test/integration/pages/A_CustomerMaterialObjectPage'
    ],
    function(JourneyRunner, opaJourney, A_CustomerMaterialList, A_CustomerMaterialObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('demo/customermaterial') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheA_CustomerMaterialList: A_CustomerMaterialList,
					onTheA_CustomerMaterialObjectPage: A_CustomerMaterialObjectPage
                }
            },
            opaJourney.run
        );
    }
);