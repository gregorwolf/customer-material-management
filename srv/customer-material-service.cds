//using { API_PRODUCT_SRV as externalProduct } from './external/API_PRODUCT_SRV.csn';
//using { API_BUSINESS_PARTNER as externalBusinessPartner } from './external/API_BUSINESS_PARTNER.csn';
using { API_CUSTOMER_MATERIAL_SRV as externalCustomerMaterial } from './external/API_CUSTOMER_MATERIAL_SRV.csn';

service CustomerMaterialService {

  entity A_CustomerMaterial as projection on externalCustomerMaterial.A_CustomerMaterial;

}

annotate CustomerMaterialService with @(requires: 'authenticated-user');
// eature not supported: Method .0 of fluent API 
/*
annotate CustomerMaterialService.A_CustomerMaterial with @(restrict: [ 
  { grant: 'READ', where: 'Customer = $user.customer' } 
]);
*/