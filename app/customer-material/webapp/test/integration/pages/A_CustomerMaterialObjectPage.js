sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'demo.customermaterial',
            componentId: 'A_CustomerMaterialObjectPage',
            entitySet: 'A_CustomerMaterial'
        },
        CustomPageDefinitions
    );
});