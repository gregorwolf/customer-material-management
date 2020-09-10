using CustomerMaterialService as service from './customer-material-service';

annotate service.A_CustomerMaterial with @(
	UI: {
	  SelectionFields: [ Material, MaterialByCustomer, MaterialDescriptionByCustomer ],
		LineItem: [
			{Value: Material},
			{Value: MaterialByCustomer},
			{Value: MaterialDescriptionByCustomer},
		],
  }
);