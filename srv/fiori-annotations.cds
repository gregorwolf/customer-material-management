using CustomerMaterialService as service from './customer-material-service';

annotate service.A_CustomerMaterial with @(UI: {
  SelectionFields: [
    Customer,
    Material,
    MaterialByCustomer,
    MaterialDescriptionByCustomer
  ],
  LineItem       : [
    {Value: Customer},
    {Value: Material},
    {Value: MaterialByCustomer},
    {Value: MaterialDescriptionByCustomer},
  ],
}) {
  // https://github.com/SAP-samples/fiori-elements-feature-showcase#value-help
  Material @(Common: {ValueList: {
    CollectionPath : 'A_Product',
    SearchSupported: false,
    Parameters     : [
      {
        $Type            : 'Common.ValueListParameterInOut',
        ValueListProperty: 'Product',
        LocalDataProperty: Material
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'GrossWeight',
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'WeightUnit',
      },
    ]
  }});
};
