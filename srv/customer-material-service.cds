using {API_PRODUCT_SRV as externalProduct} from './external/API_PRODUCT_SRV';
//using { API_BUSINESS_PARTNER as externalBusinessPartner } from './external/API_BUSINESS_PARTNER.csn';
using {API_CUSTOMER_MATERIAL_SRV as externalCustomerMaterial} from './external/API_CUSTOMER_MATERIAL_SRV';

service CustomerMaterialService {

  entity A_CustomerMaterial        as projection on externalCustomerMaterial.A_CustomerMaterial;

  entity A_Product                 as projection on externalProduct.A_Product {
    Product,
    ProductType,
    GrossWeight,
    WeightUnit,
    to_Description
  };

  entity A_ProductDescription      as projection on externalProduct.A_ProductDescription;
  entity A_CustomerMaterialComplex as projection on externalCustomerMaterial.A_CustomerMaterial;

}

annotate CustomerMaterialService with @(requires: 'authenticated-user');
// Feature not supported: Method .0 of fluent API
/*
annotate CustomerMaterialService.A_CustomerMaterial with @(restrict: [
  { grant: 'READ', where: 'Customer = $user.customer' }
]);
*/
