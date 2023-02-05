using CustomerMaterialService as service from './customer-material-service';

annotate service.A_CustomerMaterial with @(UI : {
  SelectionFields : [
    Customer,
    Material,
    MaterialByCustomer,
    MaterialDescriptionByCustomer
  ],
  LineItem        : [
    {Value : Customer},
    {Value : Material},
    {Value : MaterialByCustomer},
    {Value : MaterialDescriptionByCustomer},
  ],
});
