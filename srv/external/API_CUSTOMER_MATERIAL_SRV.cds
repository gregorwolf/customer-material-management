/* checksum : dfa7bd22f5c869d741b48a4af2ff6058 */
@cds.external : true
@m.IsDefaultEntityContainer : 'true'
@sap.message.scope.supported : 'true'
@sap.supported.formats : 'atom json xlsx'
service API_CUSTOMER_MATERIAL_SRV {};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@title : 'Customer Materials'
entity API_CUSTOMER_MATERIAL_SRV.A_CustomerMaterial {
  /**
   * An organizational unit responsible for the sale of certain products or services. The responsibility of a sales organization may include legal liability for products and customer claims.
   * 
   * You can assign any number of distribution channels and divisions to a sales organization. A particular combination of sales organization, distribution channel, and division is known as a sales area.
   */
  @sap.display.format : 'UpperCase'
  @title : 'Sales Organization'
  key SalesOrganization : String(4) not null;
  /**
   * The way in which products or services reach the customer. Typical examples of distribution channels are wholesale, retail, or direct sales.
   * 
   * You can maintain information about customers and materials by sales organization and distribution channel. Within a sales organization you can deliver goods to a given customer through more than one distribution channel.You can assign a distribution channel to one or more sales organizations. If, for example, you have numerous sales organizations, each sales organization may use the &quot;Wholesale&quot; distribution channel.For each combination of sales organization and distribution channel, you can further assign one or more of the divisions that are defined for the sales organization. You can, for example, assign &quot;Food&quot; and &quot;Non-food&quot; divisions to the &quot;Wholesale&quot; distribution channel. A particular combination of sales organization, distribution channel, and division is known as a sales area.
   */
  @sap.display.format : 'UpperCase'
  @title : 'Distribution Channel'
  key DistributionChannel : String(2) not null;
  /**
   * The customer to whom the condition or the customer-material info record applies.
   * 
   * Enter the number of your customer.
   */
  @sap.display.format : 'UpperCase'
  @title : 'Customer'
  @sap.quickinfo : 'Customer number'
  key Customer : String(10) not null;
  /** Alphanumeric key uniquely identifying the material. */
  @sap.display.format : 'UpperCase'
  @title : 'Material'
  @sap.quickinfo : 'Material Number'
  key Material : String(40) not null;
  /**
   * Uniquely identifies the material from the customer's point of view.
   * 
   * If the customer uses a different identifier than the one you use for the material, you can include this information in a customer-material info record. You can also include in this record specific shipping details, such asMinimum delivery quantityPartial delivery conditionsEnter a value from an existing customer-material info record.
   */
  @sap.display.format : 'UpperCase'
  @title : 'Customer Material'
  @sap.quickinfo : 'Material Number Used by Customer'
  MaterialByCustomer : String(35);
  /**
   * The short text that the customer uses to describe the material.
   * 
   * If you include the customer's description as short text in the customer-material info record, the system automatically uses the text during sales document processing. When you create a sales order, for example, the customer's description appears instead of the short text from the material master record.
   */
  @title : 'Customer Description'
  @sap.quickinfo : 'Customer Description of Material'
  MaterialDescriptionByCustomer : String(40);
  /** Key that uniquely identifies a plant. */
  @sap.display.format : 'UpperCase'
  @title : 'Plant'
  @sap.quickinfo : 'Plant (Own or External)'
  Plant : String(4);
  /**
   * The delivery priority assigned to an item.
   * 
   * You can assign delivery priority to either a particular material or to a combination of customer and material. When you process deliveries collectively, you can use delivery priority as one of the selection criteria.
   */
  @sap.display.format : 'NonNegative'
  @title : 'Delivery Priority'
  DeliveryPriority : String(2);
  /** Minimum quantity that may be delivered to a customer. */
  @sap.unit : 'BaseUnit'
  @title : 'Minimum Delivery Qty'
  @sap.quickinfo : 'Minimum Delivery Quantity in Delivery Note Processing'
  MinDeliveryQtyInBaseUnit : Decimal(13, 3);
  /**
   * Unit of measure in which stocks of the material are managed. The system converts all the quantities you enter in other units of measure (alternative units of measure) to the base unit of measure.
   * 
   * You define the base unit of measure and also alternative units of measure and their conversion factors in the material master record.Since all data is updated in the base unit of measure, your entry is particularly important for the conversion of alternative units of measure. A quantity in the alternative unit of measure can only be shown precisely if its value can be shown with the decimal places available. To ensure this, please note the following:The base unit of measure is the unit satisfying the highest necessary requirement for precision.The conversion of alternative units of measure to the base unit should result in simple decimal fractions (not, for example, 1/3 = 0.333...).Inventory ManagementIn Inventory Management, the base unit of measure is the same as the stockkeeping unit.ServicesServices have units of measure of their own, including the following:Service unitUnit of measure at the higher item level. The precise quantities of the individual services are each at the detailed service line level.BlanketUnit of measure at service line level for services to be provided once only, and for which no precise quantities can or are to be specified.
   */
  @title : 'Base Unit of Measure'
  @sap.semantics : 'unit-of-measure'
  BaseUnit : String(3);
  /**
   * Specifies whether the customer requires full or partial delivery for the item.
   * 
   * You use this field to control partial deliveries at the item level. If the customer allows partial delivery, you can choose from different partial delivery options. For example, you can specify whether the customer allows you to make one delivery attempt only on the requested delivery date or whether unlimited delivery attempts are possible.When partial delivery indicator 'D' is set, the order can never have status 'fully delivered'. You must complete each item by entering a reason for rejection. This could be applied to scheduling agreements, for example.You can enter a value in this field only if the customer allows partial deliveries for the entire sales document.
   */
  @sap.display.format : 'UpperCase'
  @title : 'Partial Deliv./Item'
  @sap.quickinfo : 'Partial Delivery at Item Level'
  PartialDeliveryIsAllowed : String(1);
  /**
   * The maximum number of partial deliveries you can make (including the first delivery) to satisfy the order quantity for an item.
   * 
   * The system can propose a number from the shipping information in the customer master record. During sales order processing, you can change the proposed value in the shipping information for each item in the sales document.You can only specify a maximum number of partial deliveries if the Partial delivery/item field (in either the customer master record or in the sales document) indicates that partial deliveries are allowed.
   */
  @title : 'Max.Part.Deliveries'
  @sap.quickinfo : 'Maximum Number of Partial Deliveries Allowed Per Item'
  MaxNmbrOfPartialDelivery : Decimal(1, 0);
  /** Percentage (based on the order quantity) up to which an underdelivery of this item will be accepted. */
  @title : 'Underdel. Tolerance'
  @sap.quickinfo : 'Underdelivery Tolerance'
  UnderdelivTolrtdLmtRatioInPct : Decimal(3, 1);
  /**
   * Percentage (based on the order quantity) up to which an overdelivery of this item will be accepted.
   * 
   * If you have set the indicator in the Partial delivery/Item field to 'D' (partial delivery allowed), this takes priority. It makes no sense to define a tolerance limit for overdelivery in such case.
   */
  @title : 'Overdeliv. Tolerance'
  @sap.quickinfo : 'Overdelivery Tolerance'
  OverdelivTolrtdLmtRatioInPct : Decimal(3, 1);
  /**
   * Indicates whether the customer allows unlimited over- and underdeliveries.
   * 
   * If the customer allows unlimited over- and underdeliveries, you cannot enter values in the fields that specify over- and underdelivery tolerance.
   */
  @sap.display.format : 'UpperCase'
  @title : 'Unlimited Tolerance'
  @sap.quickinfo : 'Unlimited Overdelivery Allowed'
  UnlimitedOverdeliveryIsAllowed : Boolean;
  /**
   * The item usage controls the system reaction when you process a sales document item in a certain context.
   * 
   * The item usage can be used for the determination of item categories. It controls which other item categories are to be found in a certain environment (text items and packing items, for example).It can also control which items are to be billed in a service quotation or the corresponding sales order and which are only there for statistical reasons.
   */
  @sap.display.format : 'UpperCase'
  @title : 'Item Usage'
  CustomerMaterialItemUsage : String(4);
  /** Unit of measure in which the material is sold. */
  @title : 'Sales Unit'
  @sap.semantics : 'unit-of-measure'
  SalesUnit : String(3);
  /**
   * Denominator of the conversion factor that the system uses to convert sales units base units of measure.
   * 
   * Many material processing functions, such as the generation of production requirements, may require that sales units are converted into base units of measureYou store a certain beverage in casks, but sell it in 1-liter bottles. The conversion factor is as follows:100 bt <=> 1 caThe first number (the denominator) represents the sales units, in this case, bottles. The second number (the numerator) represents the equivalent quantity in base units of measure, in this case, casks.
   */
  @title : 'Denominator'
  @sap.quickinfo : 'Denominator (Divisor) for Conversion of Sales Qty into SKU'
  SalesQtyToBaseQtyDnmntr : Decimal(5, 0);
  /**
   * Numerator of the conversion factor that the system uses to convert sales units base units of measure.
   * 
   * Many material processing functions, such as the generation of production requirements, may require that sales units are converted into base units of measureYou store a certain beverage in casks, but sell it in 1-liter bottles. The conversion factor is as follows:100 bt <=> 1 caThe first number (the denominator) represents the sales units, in this case, bottles. The second number (the numerator) represents the equivalent quantity in base units of measure, in this case, casks.
   */
  @title : 'Numerator'
  @sap.quickinfo : 'Numerator (factor) for conversion of sales quantity into SKU'
  SalesQtyToBaseQtyNmrtr : Decimal(5, 0);
  /** Comparison key for tracking the most recent version of the customer material. */
  @sap.display.format : 'UpperCase'
  @title : 'ETag'
  ETag : String(10);
};
