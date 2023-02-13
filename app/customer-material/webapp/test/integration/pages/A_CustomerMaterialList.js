sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'demo.customermaterial',
            componentId: 'A_CustomerMaterialList',
            entitySet: 'A_CustomerMaterial'
        },
        CustomPageDefinitions
    );
});