/* checksum : 3372557ac29123d29c7f4cd299ece4fd */
@cds.external               : true
@m.IsDefaultEntityContainer : 'true'
@sap.supported.formats      : 'atom json xlsx'
service API_PRODUCT_SRV {};

@cds.external         : true
@cds.persistence.skip : true
@sap.deletable        : 'false'
@sap.content.version  : '1'
@title                : 'Product'
entity API_PRODUCT_SRV.A_Product {
        @sap.display.format : 'UpperCase'
        @title              : 'Product'
        @sap.quickinfo      : 'Product Number'
    key Product                       : String(40) not null;
        @sap.display.format : 'UpperCase'
        @title              : 'Product Type'
        ProductType                   : String(4);
        @sap.display.format : 'UpperCase'
        @title              : 'CrossPlantProdStatus'
        @sap.quickinfo      : 'Cross-Plant Product Status'
        CrossPlantStatus              : String(2);
        @sap.display.format : 'Date'
        @title              : 'Valid from'
        @sap.quickinfo      : 'Date from which the cross-plant material status is valid'
        CrossPlantStatusValidityDate  : Date;
        @sap.display.format : 'Date'
        @title              : 'Created On'
        @sap.creatable      : 'false'
        @sap.updatable      : 'false'
        CreationDate                  : Date;
        @sap.display.format : 'UpperCase'
        @title              : 'Created By'
        @sap.quickinfo      : 'Name of Person Responsible for Creating the Object'
        @sap.creatable      : 'false'
        @sap.updatable      : 'false'
        CreatedByUser                 : String(12);
        @sap.display.format : 'Date'
        @title              : 'Last Change'
        @sap.quickinfo      : 'Date of Last Change'
        @sap.creatable      : 'false'
        @sap.updatable      : 'false'
        LastChangeDate                : Date;
        @sap.display.format : 'UpperCase'
        @title              : 'Changed By'
        @sap.quickinfo      : 'Name of Person Who Changed Object'
        @sap.creatable      : 'false'
        @sap.updatable      : 'false'
        LastChangedByUser             : String(12);
        @odata.Type         : 'Edm.DateTimeOffset'
        @odata.Precision    : 7
        @title              : 'Last Changed'
        @sap.quickinfo      : 'Change Time Stamp'
        @sap.creatable      : 'false'
        @sap.updatable      : 'false'
        LastChangeDateTime            : Timestamp;
        @sap.display.format : 'UpperCase'
        @title              : 'Marked for Deletion'
        @sap.quickinfo      : 'Deletion Indicator'
        IsMarkedForDeletion           : Boolean;
        @sap.display.format : 'UpperCase'
        @title              : 'Old Product Number'
        ProductOldID                  : String(40);
        @sap.unit           : 'WeightUnit'
        @title              : 'Gross Weight'
        GrossWeight                   : Decimal(13, 3);
        @title              : 'Order Unit'
        @sap.quickinfo      : 'Purchase Order Unit of Measure'
        @sap.semantics      : 'unit-of-measure'
        PurchaseOrderQuantityUnit     : String(3);
        @sap.display.format : 'UpperCase'
        @title              : 'Source of supply'
        @sap.quickinfo      : 'Source of Supply'
        SourceOfSupply                : String(1);
        @title              : 'Unit of Weight'
        @sap.semantics      : 'unit-of-measure'
        WeightUnit                    : String(3);
        @sap.unit           : 'WeightUnit'
        @title              : 'Net Weight'
        NetWeight                     : Decimal(13, 3);
        @sap.display.format : 'UpperCase'
        @title              : 'Cntry/Reg of Origin'
        @sap.quickinfo      : 'Country/Region of Origin of Material (Non-Preferential Ori.)'
        CountryOfOrigin               : String(3);
        @sap.display.format : 'UpperCase'
        @title              : 'Competitor'
        CompetitorID                  : String(10);
        @sap.display.format : 'UpperCase'
        @title              : 'Product Group'
        ProductGroup                  : String(9);
        @title              : 'Base Unit of Measure'
        @sap.semantics      : 'unit-of-measure'
        BaseUnit                      : String(3);
        @sap.display.format : 'UpperCase'
        @title              : 'Gen. item cat. grp'
        @sap.quickinfo      : 'General item category group'
        ItemCategoryGroup             : String(4);
        @sap.display.format : 'UpperCase'
        @title              : 'Product Hierarchy'
        ProductHierarchy              : String(18);
        @sap.display.format : 'UpperCase'
        @title              : 'Division'
        Division                      : String(2);
        @sap.display.format : 'UpperCase'
        @title              : 'Var. Order Unit'
        @sap.quickinfo      : 'Variable Purchase Order Unit Active'
        VarblPurOrdUnitIsActive       : String(1);
        @title              : 'Volume Unit'
        @sap.semantics      : 'unit-of-measure'
        VolumeUnit                    : String(3);
        @sap.unit           : 'VolumeUnit'
        @title              : 'Volume'
        MaterialVolume                : Decimal(13, 3);
        @sap.display.format : 'NonNegative'
        @title              : 'ANP Code'
        ANPCode                       : String(9);
        @sap.display.format : 'UpperCase'
        @title              : 'Brand'
        Brand                         : String(4);
        @sap.display.format : 'UpperCase'
        @title              : 'Procurement rule'
        ProcurementRule               : String(1);
        @sap.display.format : 'Date'
        @title              : 'Valid From'
        @sap.quickinfo      : 'Valid-From Date'
        ValidityStartDate             : Date;
        @sap.display.format : 'UpperCase'
        @title              : 'Low-Level Code'
        LowLevelCode                  : String(3);
        @sap.display.format : 'UpperCase'
        @title              : 'Generic Material'
        @sap.quickinfo      : 'Material Number of the Generic Material in Prepack Materials'
        ProdNoInGenProdInPrepackProd  : String(40);
        @sap.display.format : 'UpperCase'
        @title              : 'Serial No. Profile'
        @sap.quickinfo      : 'Serial Number Profile'
        SerialIdentifierAssgmtProfile : String(4);
        @sap.display.format : 'UpperCase'
        @title              : 'Size/dimensions'
        SizeOrDimensionText           : String(32);
        @sap.display.format : 'UpperCase'
        @title              : 'Industry Std Desc.'
        @sap.quickinfo      : 'Industry Standard Description (such as ANSI or ISO)'
        IndustryStandardName          : String(18);
        @sap.display.format : 'UpperCase'
        @title              : 'GTIN'
        @sap.quickinfo      : 'Global Trade Item Number (EAN/UPC/GTIN)'
        ProductStandardID             : String(18);
        @sap.display.format : 'UpperCase'
        @title              : 'EAN category'
        @sap.quickinfo      : 'Category of International Article Number (EAN)'
        InternationalArticleNumberCat : String(2);
        @sap.display.format : 'UpperCase'
        @title              : 'Configurable'
        @sap.quickinfo      : 'Product is Configurable'
        ProductIsConfigurable         : Boolean;
        @sap.display.format : 'UpperCase'
        @title              : 'Batch Management'
        @sap.quickinfo      : 'Batch Management Requirement Indicator'
        IsBatchManagementRequired     : Boolean;
        @sap.display.format : 'UpperCase'
        @title              : 'Ext. Product Group'
        @sap.quickinfo      : 'External Product Group'
        ExternalProductGroup          : String(18);
        @sap.display.format : 'UpperCase'
        @title              : 'Cross-plant CP'
        @sap.quickinfo      : 'Cross-Plant Configurable Product'
        CrossPlantConfigurableProduct : String(40);
        @sap.display.format : 'UpperCase'
        @title              : 'Serialization level'
        @sap.quickinfo      : 'Level of Explicitness for Serial Number'
        SerialNoExplicitnessLevel     : String(1);
        @sap.display.format : 'UpperCase'
        @title              : 'Mfr Part Number'
        @sap.quickinfo      : 'Manufacturer Part Number'
        ProductManufacturerNumber     : String(40);
        @sap.display.format : 'UpperCase'
        @title              : 'Manufacturer'
        @sap.quickinfo      : 'Number of a Manufacturer'
        ManufacturerNumber            : String(10);
        @sap.display.format : 'UpperCase'
        @title              : 'Mfr part profile'
        ManufacturerPartProfile       : String(4);
        @sap.display.format : 'UpperCase'
        @title              : 'QM in Procur. Active'
        @sap.quickinfo      : 'QM in Procurement Is Active'
        QltyMgmtInProcmtIsActive      : Boolean;
        @sap.display.format : 'UpperCase'
        @title              : 'Industry'
        IndustrySector                : String(1);
        @sap.display.format : 'UpperCase'
        @title              : 'Change Number'
        ChangeNumber                  : String(12);
        @sap.display.format : 'UpperCase'
        @title              : 'Revision Level'
        MaterialRevisionLevel         : String(2);
        @sap.display.format : 'UpperCase'
        @title              : 'Handling Indicator'
        HandlingIndicator             : String(4);
        @sap.display.format : 'UpperCase'
        @title              : 'WH Material Group'
        @sap.quickinfo      : 'Warehouse Material Group'
        WarehouseProductGroup         : String(4);
        @sap.display.format : 'UpperCase'
        @title              : 'Whse Stor. Condition'
        @sap.quickinfo      : 'Warehouse Storage Condition'
        WarehouseStorageCondition     : String(2);
        @sap.display.format : 'UpperCase'
        @title              : 'Standard HU Type'
        StandardHandlingUnitType      : String(4);
        @sap.display.format : 'UpperCase'
        @title              : 'Serial No. Profile'
        @sap.quickinfo      : 'Serial Number Profile'
        SerialNumberProfile           : String(4);
        @sap.display.format : 'UpperCase'
        @title              : 'Adjust. Profile'
        @sap.quickinfo      : 'Adjustment Profile'
        AdjustmentProfile             : String(3);
        @title              : 'Preferred UoM'
        @sap.quickinfo      : 'Preferred Alternative UoM for Warehouse Operations'
        @sap.semantics      : 'unit-of-measure'
        PreferredUnitOfMeasure        : String(3);
        @sap.display.format : 'UpperCase'
        @title              : 'Pilferable'
        IsPilferable                  : Boolean;
        @sap.display.format : 'UpperCase'
        @title              : 'Relevant for HS'
        @sap.quickinfo      : 'Relevant for Hazardous Substances'
        IsRelevantForHzdsSubstances   : Boolean;
        @title              : 'Quarant. Per.'
        @sap.quickinfo      : 'Quarantine Period'
        QuarantinePeriod              : Decimal(3, 0);
        @title              : 'Time Unit'
        @sap.quickinfo      : 'Time Unit for Quarantine Period'
        @sap.semantics      : 'unit-of-measure'
        TimeUnitForQuarantinePeriod   : String(3);
        @sap.display.format : 'UpperCase'
        @title              : 'Quality Inspec. Grp'
        @sap.quickinfo      : 'Quality Inspection Group'
        QualityInspectionGroup        : String(4);
        @sap.display.format : 'UpperCase'
        @title              : 'Authorization Group'
        AuthorizationGroup            : String(4);
        @sap.display.format : 'UpperCase'
        @title              : 'CAD Indicator'
        DocumentIsCreatedByCAD        : Boolean;
        @sap.display.format : 'UpperCase'
        @title              : 'Handling Unit Type'
        HandlingUnitType              : String(4);
        @sap.display.format : 'UpperCase'
        @title              : 'Varb. Tare Weight'
        @sap.quickinfo      : 'Variable Tare Weight'
        HasVariableTareWeight         : Boolean;
        @sap.unit           : 'UnitForMaxPackagingDimensions'
        @title              : 'Max. Pack. Length'
        @sap.quickinfo      : 'Maximum Packing Length of Packaging Material'
        MaximumPackagingLength        : Decimal(15, 3);
        @sap.unit           : 'UnitForMaxPackagingDimensions'
        @title              : 'Max. Pack. Width'
        @sap.quickinfo      : 'Maximum Packing Width of Packaging Material'
        MaximumPackagingWidth         : Decimal(15, 3);
        @sap.unit           : 'UnitForMaxPackagingDimensions'
        @title              : 'Max. Pack. Height'
        @sap.quickinfo      : 'Maximum Packing Height of Packaging Material'
        MaximumPackagingHeight        : Decimal(15, 3);
        @title              : 'Unit of Measurement'
        @sap.quickinfo      : 'Unit of Measure for Maximum Packing Length/Width/Height'
        @sap.semantics      : 'unit-of-measure'
        UnitForMaxPackagingDimensions : String(3);
        to_Description                : Association to many API_PRODUCT_SRV.A_ProductDescription
                                            on $self.Product = to_Description.Product;
        @cds.ambiguous      : 'missing on condition?'
        to_Plant                      : Association to many API_PRODUCT_SRV.A_ProductPlant {};
        @cds.ambiguous      : 'missing on condition?'
        to_ProductBasicText           : Association to many API_PRODUCT_SRV.A_ProductBasicText {};
        @cds.ambiguous      : 'missing on condition?'
        to_ProductInspectionText      : Association to many API_PRODUCT_SRV.A_ProductInspectionText {};
        @cds.ambiguous      : 'missing on condition?'
        to_ProductProcurement         : Association to API_PRODUCT_SRV.A_ProductProcurement {};
        @cds.ambiguous      : 'missing on condition?'
        to_ProductPurchaseText        : Association to many API_PRODUCT_SRV.A_ProductPurchaseText {};
        @cds.ambiguous      : 'missing on condition?'
        to_ProductQualityMgmt         : Association to API_PRODUCT_SRV.A_ProductQualityMgmt {};
        @cds.ambiguous      : 'missing on condition?'
        to_ProductSales               : Association to API_PRODUCT_SRV.A_ProductSales {};
        @cds.ambiguous      : 'missing on condition?'
        to_ProductSalesTax            : Association to many API_PRODUCT_SRV.A_ProductSalesTax {};
        @cds.ambiguous      : 'missing on condition?'
        to_ProductStorage             : Association to API_PRODUCT_SRV.A_ProductStorage {};
        @cds.ambiguous      : 'missing on condition?'
        to_ProductUnitsOfMeasure      : Association to many API_PRODUCT_SRV.A_ProductUnitsOfMeasure {};
        @cds.ambiguous      : 'missing on condition?'
        to_SalesDelivery              : Association to many API_PRODUCT_SRV.A_ProductSalesDelivery {};
        @cds.ambiguous      : 'missing on condition?'
        to_Valuation                  : Association to many API_PRODUCT_SRV.A_ProductValuation {};
};

@cds.external         : true
@cds.persistence.skip : true
@sap.content.version  : '1'
@title                : 'Basic Text'
entity API_PRODUCT_SRV.A_ProductBasicText {
        @sap.display.format : 'UpperCase'
        @title              : 'Material'
        @sap.quickinfo      : 'Material Number'
    key Product  : String(40) not null;
        @title              : 'Language Key'
    key Language : String(2) not null;
        @title              : 'String'
        @sap.heading        : ''
        LongText : LargeString;
};

@cds.external         : true
@cds.persistence.skip : true
@sap.content.version  : '1'
@title                : 'Product Description'
entity API_PRODUCT_SRV.A_ProductDescription {
        @sap.display.format : 'UpperCase'
        @title              : 'Product'
        @sap.quickinfo      : 'Product Number'
    key Product            : String(40) not null;
        @title              : 'Language Key'
    key Language           : String(2) not null;
        @title              : 'Product Description'
        ProductDescription : String(40);
};

@cds.external         : true
@cds.persistence.skip : true
@sap.content.version  : '1'
@title                : 'Inspection Text'
entity API_PRODUCT_SRV.A_ProductInspectionText {
        @sap.display.format : 'UpperCase'
        @title              : 'Material'
        @sap.quickinfo      : 'Material Number'
    key Product  : String(40) not null;
        @title              : 'Language Key'
    key Language : String(2) not null;
        @title              : 'String'
        @sap.heading        : ''
        LongText : LargeString;
};

@cds.external         : true
@cds.persistence.skip : true
@sap.deletable        : 'false'
@sap.content.version  : '1'
@title                : 'Material Ledger Account'
entity API_PRODUCT_SRV.A_ProductMLAccount {
        @sap.display.format : 'UpperCase'
        @title              : 'Material'
        @sap.quickinfo      : 'Material Number'
    key Product             : String(40) not null;
        @sap.display.format : 'UpperCase'
        @title              : 'Valuation Area'
    key ValuationArea       : String(4) not null;
        @sap.display.format : 'UpperCase'
        @title              : 'Valuation Type'
    key ValuationType       : String(10) not null;
        @title              : 'Crcy Type/Valn View'
        @sap.quickinfo      : 'External Currency Type and Valuation View'
    key CurrencyRole        : String(2) not null;
        @sap.display.format : 'UpperCase'
        @title              : 'Currency'
        @sap.quickinfo      : 'Currency Key'
        @sap.semantics      : 'currency-code'
        Currency            : String(5);
        @sap.display.format : 'UpperCase'
        @title              : 'Price control'
        @sap.quickinfo      : 'Price control indicator'
        ProductPriceControl : String(1);
        @title              : 'Price unit'
        PriceUnitQty        : Decimal(5, 0);
        @sap.unit           : 'Currency'
        @title              : 'Per. unit price'
        @sap.quickinfo      : 'Periodic unit price'
        MovingAveragePrice  : Decimal(12, 3);
        @sap.unit           : 'Currency'
        @title              : 'Standard price'
        StandardPrice       : Decimal(12, 3);
};

@cds.external         : true
@cds.persistence.skip : true
@sap.deletable        : 'false'
@sap.content.version  : '1'
@title                : 'Material Ledger Prices'
entity API_PRODUCT_SRV.A_ProductMLPrices {
        @sap.display.format : 'UpperCase'
        @title              : 'Material'
        @sap.quickinfo      : 'Material Number'
    key Product                      : String(40) not null;
        @sap.display.format : 'UpperCase'
        @title              : 'Valuation Area'
    key ValuationArea                : String(4) not null;
        @sap.display.format : 'UpperCase'
        @title              : 'Valuation Type'
    key ValuationType                : String(10) not null;
        @title              : 'Crcy Type/Valn View'
        @sap.quickinfo      : 'External Currency Type and Valuation View'
    key CurrencyRole                 : String(2) not null;
        @sap.display.format : 'UpperCase'
        @title              : 'Currency'
        @sap.quickinfo      : 'Currency Key'
        @sap.semantics      : 'currency-code'
        Currency                     : String(5);
        @sap.unit           : 'Currency'
        @title              : 'Future Price'
        FuturePrice                  : Decimal(12, 3);
        @sap.display.format : 'Date'
        @title              : 'Future Price From'
        @sap.quickinfo      : 'Date from Which a Future Valuation Price Is to Be Valid'
        FuturePriceValidityStartDate : Date;
        @sap.unit           : 'Currency'
        @title              : 'Cost'
        PlannedPrice                 : Decimal(24, 3);
};

@cds.external         : true
@cds.persistence.skip : true
@sap.deletable        : 'false'
@sap.content.version  : '1'
@title                : 'Plant Data'
entity API_PRODUCT_SRV.A_ProductPlant {
        @sap.display.format : 'UpperCase'
        @title              : 'Material'
        @sap.quickinfo      : 'Material Number'
    key Product                        : String(40) not null;
        @sap.display.format : 'UpperCase'
        @title              : 'Plant'
    key Plant                          : String(4) not null;
        @sap.display.format : 'UpperCase'
        @title              : 'Purchasing Group'
        PurchasingGroup                : String(3);
        @sap.display.format : 'UpperCase'
        @title              : 'Cntry/Reg of Origin'
        @sap.quickinfo      : 'Country/Region of Origin of Material (Non-Preferential Ori.)'
        CountryOfOrigin                : String(3);
        @sap.display.format : 'UpperCase'
        @title              : 'Region of Origin'
        @sap.quickinfo      : 'Region of Origin of Material (Non-Preferential Origin)'
        RegionOfOrigin                 : String(3);
        @sap.display.format : 'UpperCase'
        @title              : 'Storage Location'
        @sap.quickinfo      : 'Issue Storage Location'
        ProductionInvtryManagedLoc     : String(4);
        @sap.display.format : 'UpperCase'
        @title              : 'Material Status'
        @sap.quickinfo      : 'Plant-Specific Material Status'
        ProfileCode                    : String(2);
        @sap.display.format : 'Date'
        @title              : 'Valid From'
        @sap.quickinfo      : 'Date from Which the Plant-Specific Material Status Is Valid'
        ProfileValidityStartDate       : Date;
        @sap.display.format : 'UpperCase'
        @title              : 'Availability check'
        @sap.quickinfo      : 'Checking Group for Availability Check'
        AvailabilityCheckType          : String(2);
        @sap.display.format : 'UpperCase'
        @title              : 'Fiscal Year Variant'
        FiscalYearVariant              : String(2);
        @sap.display.format : 'UpperCase'
        @title              : 'Period Indicator'
        PeriodType                     : String(1);
        @sap.display.format : 'UpperCase'
        @title              : 'Profit Center'
        ProfitCenter                   : String(10);
        @sap.display.format : 'UpperCase'
        @title              : 'Commodity Code'
        Commodity                      : String(17);
        @title              : 'GR processing time'
        @sap.quickinfo      : 'Goods receipt processing time in days'
        GoodsReceiptDuration           : Decimal(3, 0);
        @sap.display.format : 'UpperCase'
        @title              : 'Maintenance status'
        MaintenanceStatusName          : String(15);
        @sap.display.format : 'UpperCase'
        @title              : 'DF at plant level'
        @sap.quickinfo      : 'Flag Material for Deletion at Plant Level'
        IsMarkedForDeletion            : Boolean;
        @sap.display.format : 'UpperCase'
        @title              : 'MRP Type'
        MRPType                        : String(2);
        @sap.display.format : 'UpperCase'
        @title              : 'MRP Controller'
        MRPResponsible                 : String(3);
        @sap.display.format : 'UpperCase'
        @title              : 'ABC Indicator'
        ABCIndicator                   : String(1);
        @sap.unit           : 'BaseUnit'
        @title              : 'Minimum Lot Size'
        MinimumLotSizeQuantity         : Decimal(13, 3);
        @sap.unit           : 'BaseUnit'
        @title              : 'Maximum Lot Size'
        MaximumLotSizeQuantity         : Decimal(13, 3);
        @sap.unit           : 'BaseUnit'
        @title              : 'Fixed lot size'
        FixedLotSizeQuantity           : Decimal(13, 3);
        @sap.display.format : 'UpperCase'
        @title              : 'Control Code'
        @sap.quickinfo      : 'Control code for consumption taxes in foreign trade'
        ConsumptionTaxCtrlCode         : String(16);
        @sap.display.format : 'UpperCase'
        @title              : 'Co-Product'
        IsCoProduct                    : Boolean;
        @sap.display.format : 'UpperCase'
        @title              : 'ConfigurableProduct'
        @sap.quickinfo      : 'Configurable Product'
        ProductIsConfigurable          : String(40);
        @sap.display.format : 'UpperCase'
        @title              : 'Stock Determ. Group'
        @sap.quickinfo      : 'Stock determination group'
        StockDeterminationGroup        : String(4);
        @sap.unit           : 'BaseUnit'
        StockInTransferQuantity        : Decimal(13, 3);
        @sap.unit           : 'BaseUnit'
        StockInTransitQuantity         : Decimal(13, 3);
        @sap.display.format : 'UpperCase'
        @title              : 'Post to insp. stock'
        @sap.quickinfo      : 'Has Post to Inspection Stock'
        HasPostToInspectionStock       : Boolean;
        @sap.display.format : 'UpperCase'
        @title              : 'Batch Mgmt Rqt(Plnt)'
        @sap.quickinfo      : 'Batch Management Requirement Indicator for Plant'
        IsBatchManagementRequired      : Boolean;
        @sap.display.format : 'UpperCase'
        @title              : 'Serial No. Profile'
        @sap.quickinfo      : 'Serial Number Profile'
        SerialNumberProfile            : String(4);
        @sap.display.format : 'UpperCase'
        @title              : 'Neg. Stocks In Plant'
        @sap.quickinfo      : 'Negative stocks allowed in plant'
        IsNegativeStockAllowed         : Boolean;
        @sap.unit           : 'BaseUnit'
        GoodsReceiptBlockedStockQty    : Decimal(13, 3);
        @sap.display.format : 'UpperCase'
        @title              : 'Consign.Control'
        @sap.quickinfo      : 'Consignment Control'
        HasConsignmentCtrl             : String(1);
        @sap.display.format : 'NonNegative'
        FiscalYearCurrentPeriod        : String(4);
        @sap.display.format : 'NonNegative'
        FiscalMonthCurrentPeriod       : String(2);
        @sap.display.format : 'UpperCase'
        @title              : 'Procurement Type'
        ProcurementType                : String(1);
        @sap.display.format : 'UpperCase'
        @title              : 'Batch Management'
        @sap.quickinfo      : 'Batch management indicator (internal)'
        IsInternalBatchManaged         : Boolean;
        @sap.display.format : 'UpperCase'
        @title              : 'Mat. CFOP category'
        @sap.quickinfo      : 'Material CFOP category'
        ProductCFOPCategory            : String(2);
        @sap.display.format : 'UpperCase'
        @title              : 'Is Excise Tax Relevant'
        @sap.quickinfo      : 'Excise Tax Relevance Indicator'
        ProductIsExciseTaxRelevant     : Boolean;
        @title              : 'Base Unit of Measure'
        @sap.semantics      : 'unit-of-measure'
        BaseUnit                       : String(3);
        @sap.display.format : 'UpperCase'
        @title              : 'Conf. Material'
        @sap.quickinfo      : 'Configurable Material'
        ConfigurableProduct            : String(40);
        @title              : 'Unit of issue'
        @sap.quickinfo      : 'Ouput Unit of Measure'
        @sap.semantics      : 'unit-of-measure'
        GoodsIssueUnit                 : String(3);
        @sap.display.format : 'UpperCase'
        @title              : 'Material Freight Grp'
        @sap.quickinfo      : 'Material Freight Group'
        MaterialFreightGroup           : String(8);
        @sap.display.format : 'UpperCase'
        @title              : 'OB Reference Materl'
        @sap.quickinfo      : 'Reference Material for Original Batches'
        OriginalBatchReferenceMaterial : String(40);
        @sap.display.format : 'UpperCase'
        @title              : 'OB Management'
        @sap.quickinfo      : 'Indicator for Original Batch Management'
        OriglBatchManagementIsRequired : String(1);
        @sap.display.format : 'UpperCase'
        @title              : 'Critical Part'
        @sap.quickinfo      : 'Indicator: Critical part'
        ProductIsCriticalPrt           : Boolean;
        @sap.display.format : 'UpperCase'
        @title              : 'Log. handling group'
        @sap.quickinfo      : 'Logistics handling group for workload calculation'
        ProductLogisticsHandlingGroup  : String(4);
        @cds.ambiguous      : 'missing on condition?'
        to_PlantMRPArea                : Association to many API_PRODUCT_SRV.A_ProductPlantMRPArea {};
        @cds.ambiguous      : 'missing on condition?'
        to_PlantQualityMgmt            : Association to API_PRODUCT_SRV.A_ProductPlantQualityMgmt {};
        @cds.ambiguous      : 'missing on condition?'
        to_PlantSales                  : Association to API_PRODUCT_SRV.A_ProductPlantSales {};
        @cds.ambiguous      : 'missing on condition?'
        to_PlantStorage                : Association to API_PRODUCT_SRV.A_ProductPlantStorage {};
        @cds.ambiguous      : 'missing on condition?'
        to_PlantText                   : Association to API_PRODUCT_SRV.A_ProductPlantText {};
        @cds.ambiguous      : 'missing on condition?'
        to_ProdPlantInternationalTrade : Association to API_PRODUCT_SRV.A_ProductPlantIntlTrd {};
        @cds.ambiguous      : 'missing on condition?'
        to_ProductPlantCosting         : Association to API_PRODUCT_SRV.A_ProductPlantCosting {};
        @cds.ambiguous      : 'missing on condition?'
        to_ProductPlantForecast        : Association to API_PRODUCT_SRV.A_ProductPlantForecasting {};
        @cds.ambiguous      : 'missing on condition?'
        to_ProductPlantProcurement     : Association to API_PRODUCT_SRV.A_ProductPlantProcurement {};
        @cds.ambiguous      : 'missing on condition?'
        to_ProductSupplyPlanning       : Association to API_PRODUCT_SRV.A_ProductSupplyPlanning {};
        @cds.ambiguous      : 'missing on condition?'
        to_ProductWorkScheduling       : Association to API_PRODUCT_SRV.A_ProductWorkScheduling {};
        @cds.ambiguous      : 'missing on condition?'
        to_StorageLocation             : Association to many API_PRODUCT_SRV.A_ProductStorageLocation {};
};

@cds.external         : true
@cds.persistence.skip : true
@sap.deletable        : 'false'
@sap.content.version  : '1'
@title                : 'Costing Data at Plant Level'
entity API_PRODUCT_SRV.A_ProductPlantCosting {
        @sap.display.format : 'UpperCase'
        @title              : 'Product'
        @sap.quickinfo      : 'Product Number'
    key Product                       : String(40) not null;
        @sap.display.format : 'UpperCase'
        @title              : 'Plant'
    key Plant                         : String(4) not null;
        @sap.display.format : 'UpperCase'
        @title              : 'Co-Product'
        IsCoProduct                   : Boolean;
        @sap.unit           : 'BaseUnit'
        @title              : 'Costing Lot Size'
        @sap.quickinfo      : 'Lot Size for Product Costing'
        CostingLotSize                : Decimal(13, 3);
        @sap.display.format : 'UpperCase'
        @title              : 'Variance Key'
        VarianceKey                   : String(6);
        @title              : 'Base Unit of Measure'
        @sap.semantics      : 'unit-of-measure'
        BaseUnit                      : String(3);
        @sap.display.format : 'UpperCase'
        @title              : 'Group Counter'
        TaskListGroupCounter          : String(2);
        @sap.display.format : 'UpperCase'
        @title              : 'Group'
        @sap.quickinfo      : 'Key for Task List Group'
        TaskListGroup                 : String(8);
        @sap.display.format : 'UpperCase'
        @title              : 'Task List Type'
        TaskListType                  : String(1);
        @sap.display.format : 'UpperCase'
        @title              : 'Production Version'
        @sap.quickinfo      : 'Production Version To Be Costed'
        CostingProductionVersion      : String(4);
        @sap.display.format : 'UpperCase'
        @title              : 'Fixed-Price Co-Prod.'
        @sap.quickinfo      : 'Fixed-Price Co-Product'
        IsFixedPriceCoProduct         : Boolean;
        @sap.display.format : 'UpperCase'
        @title              : 'Special Procurement Type'
        @sap.quickinfo      : 'Special Procurement Type for Costing'
        CostingSpecialProcurementType : String(2);
        @sap.display.format : 'UpperCase'
        @title              : 'Alternative BOM'
        SourceBOMAlternative          : String(2);
        @sap.display.format : 'UpperCase'
        @title              : 'BOM Usage'
        ProductBOMUsage               : String(1);
        @sap.display.format : 'UpperCase'
        @title              : 'Do Not Cost'
        ProductIsCostingRelevant      : Boolean;
};

@cds.external         : true
@cds.persistence.skip : true
@sap.deletable        : 'false'
@sap.content.version  : '1'
@title                : 'Forecasting Data'
entity API_PRODUCT_SRV.A_ProductPlantForecasting {
        @sap.display.format : 'UpperCase'
        @title              : 'Product'
        @sap.quickinfo      : 'Product Number'
    key Product                     : String(40) not null;
        @sap.display.format : 'UpperCase'
        @title              : 'Plant'
    key Plant                       : String(4) not null;
        @sap.display.format : 'Date'
        @title              : 'Date to'
        @sap.quickinfo      : 'To date of the material to be copied for consumption'
        ConsumptionRefUsageEndDate  : Date;
        @title              : 'Multiplier'
        @sap.quickinfo      : 'Multiplier for reference material for consumption'
        ConsumptionQtyMultiplier    : Decimal(4, 2);
        @sap.display.format : 'UpperCase'
        @title              : 'RefMatl: consumption'
        @sap.quickinfo      : 'Reference material for consumption'
        ConsumptionReferenceProduct : String(40);
        @sap.display.format : 'UpperCase'
        @title              : 'RefPlant:consumption'
        @sap.quickinfo      : 'Reference plant for consumption'
        ConsumptionReferencePlant   : String(4);
};

@cds.external         : true
@cds.persistence.skip : true
@sap.deletable        : 'false'
@sap.content.version  : '1'
@title                : 'International Trade Data'
entity API_PRODUCT_SRV.A_ProductPlantIntlTrd {
        @sap.display.format : 'UpperCase'
        @title              : 'Product'
        @sap.quickinfo      : 'Product Number'
    key Product                     : String(40) not null;
        @sap.display.format : 'UpperCase'
        @title              : 'Plant'
    key Plant                       : String(4) not null;
        @sap.display.format : 'UpperCase'
        @title              : 'Country/Region of Origin'
        @sap.quickinfo      : 'Country/Region of Origin of Product'
        CountryOfOrigin             : String(3);
        @sap.display.format : 'UpperCase'
        @title              : 'Region of Origin'
        RegionOfOrigin              : String(3);
        @sap.display.format : 'UpperCase'
        @title              : 'Control Code'
        @sap.quickinfo      : 'Control code for consumption taxes in foreign trade'
        ConsumptionTaxCtrlCode      : String(16);
        @sap.display.format : 'UpperCase'
        @title              : 'CAS number (pharm.)'
        @sap.quickinfo      : 'CAS number for pharmaceutical products in foreign trade'
        ProductCASNumber            : String(15);
        @sap.display.format : 'UpperCase'
        @title              : 'PRODCOM no.'
        @sap.quickinfo      : 'Production statistics: PRODCOM number for foreign trade'
        ProdIntlTradeClassification : String(9);
        @sap.display.format : 'UpperCase'
        @title              : 'Intrastat Group'
        @sap.quickinfo      : 'Material Group for Intrastat'
        ExportAndImportProductGroup : String(4);
};

@cds.external         : true
@cds.persistence.skip : true
@sap.deletable        : 'false'
@sap.content.version  : '1'
@title                : 'MRP Area Data'
entity API_PRODUCT_SRV.A_ProductPlantMRPArea {
        @sap.display.format : 'UpperCase'
        @title              : 'Material'
        @sap.quickinfo      : 'Material Number'
    key Product                       : String(40) not null;
        @sap.display.format : 'UpperCase'
        @title              : 'MRP Area Plant'
        @sap.quickinfo      : 'MRP Area: Plant'
    key Plant                         : String(4) not null;
        @sap.display.format : 'UpperCase'
        @title              : 'MRP Area'
    key MRPArea                       : String(10) not null;
        @sap.display.format : 'UpperCase'
        @title              : 'MRP Type'
        MRPType                       : String(2);
        @sap.display.format : 'UpperCase'
        @title              : 'MRP Controller'
        MRPResponsible                : String(3);
        @sap.display.format : 'UpperCase'
        @title              : 'MRP Group'
        MRPGroup                      : String(4);
        @sap.unit           : 'BaseUnit'
        @title              : 'Reorder Point'
        ReorderThresholdQuantity      : Decimal(13, 3);
        @sap.display.format : 'NonNegative'
        @title              : 'Planning time fence'
        PlanningTimeFence             : String(3);
        @sap.display.format : 'UpperCase'
        @title              : 'Lot Sizing Procedure'
        @sap.quickinfo      : 'Lot Sizing Procedure in Materials Planning'
        LotSizingProcedure            : String(2);
        @sap.unit           : 'BaseUnit'
        @title              : 'Rounding value'
        @sap.quickinfo      : 'Rounding value for purchase order quantity'
        LotSizeRoundingQuantity       : Decimal(13, 3);
        @sap.unit           : 'BaseUnit'
        @title              : 'Minimum Lot Size'
        MinimumLotSizeQuantity        : Decimal(13, 3);
        @sap.unit           : 'BaseUnit'
        @title              : 'Maximum Lot Size'
        MaximumLotSizeQuantity        : Decimal(13, 3);
        @sap.unit           : 'BaseUnit'
        @title              : 'Maximum Stock Level'
        MaximumStockQuantity          : Decimal(13, 3);
        @title              : 'Assembly scrap (%)'
        @sap.quickinfo      : 'Assembly scrap in percent'
        AssemblyScrapPercent          : Decimal(5, 2);
        @sap.display.format : 'UpperCase'
        @title              : 'Special Procurement'
        @sap.quickinfo      : 'Special Procurement Type'
        ProcurementSubType            : String(2);
        @sap.display.format : 'UpperCase'
        @title              : 'Storage Location'
        @sap.quickinfo      : 'Default Storage Location for External Procurement'
        DfltStorageLocationExtProcmt  : String(4);
        @sap.display.format : 'UpperCase'
        @title              : 'Planning Calendar'
        MRPPlanningCalendar           : String(3);
        @sap.unit           : 'BaseUnit'
        @title              : 'Safety Stock'
        SafetyStockQuantity           : Decimal(13, 3);
        @sap.display.format : 'UpperCase'
        @title              : 'Coverage Profile'
        @sap.quickinfo      : 'Range-of-Coverage Profile'
        RangeOfCvrgPrflCode           : String(3);
        @sap.display.format : 'NonNegative'
        @title              : 'Safety Time'
        @sap.quickinfo      : 'Safety Time (in Workdays)'
        SafetyDuration                : String(2);
        @sap.unit           : 'BaseUnit'
        @title              : 'Fixed lot size'
        FixedLotSizeQuantity          : Decimal(13, 3);
        @sap.unit           : 'Currency'
        @title              : 'LS-Independent Costs'
        @sap.quickinfo      : 'Lot-Size-Independent Costs'
        LotSizeIndependentCosts       : Decimal(12, 3);
        @sap.display.format : 'UpperCase'
        @title              : 'Storage Costs Code'
        @sap.quickinfo      : 'Storage Costs Percentage Code'
        IsStorageCosts                : String(1);
        @title              : 'Takt time'
        RqmtQtyRcptTaktTmeInWrkgDays  : Decimal(3, 0);
        @title              : 'Service level (%)'
        @sap.quickinfo      : 'Service level'
        SrvcLvl                       : Decimal(3, 1);
        @sap.display.format : 'UpperCase'
        @title              : 'Deletion Indicator'
        IsMarkedForDeletion           : Boolean;
        @sap.display.format : 'UpperCase'
        @title              : 'Time Profile'
        @sap.quickinfo      : 'Period Profile for Safety Time'
        PerdPrflForSftyTme            : String(3);
        @sap.display.format : 'UpperCase'
        @title              : 'MRP Relevant'
        @sap.quickinfo      : 'MRP relevancy for dependent requirements'
        IsMRPDependentRqmt            : String(1);
        @sap.display.format : 'UpperCase'
        @title              : 'Safety Time'
        @sap.quickinfo      : 'Safety Time Indicator (with or without safety time)'
        IsSafetyTime                  : String(1);
        @title              : 'Planned Deliv. Time'
        @sap.quickinfo      : 'Planned Delivery Time in Days'
        PlannedDeliveryDurationInDays : Decimal(3, 0);
        @sap.display.format : 'UpperCase'
        @title              : 'Consider PlDelTime'
        @sap.quickinfo      : 'Consider Planned Delivery Time of the MRP Area'
        IsPlannedDeliveryTime         : Boolean;
        @sap.display.format : 'UpperCase'
        @title              : 'Currency'
        @sap.quickinfo      : 'Currency Key'
        @sap.semantics      : 'currency-code'
        Currency                      : String(5);
        @title              : 'Base Unit of Measure'
        @sap.semantics      : 'unit-of-measure'
        BaseUnit                      : String(3);
        @sap.display.format : 'UpperCase'
        @title              : 'Planning Cycle'
        PlanAndOrderDayDetermination  : String(3);
        @sap.display.format : 'UpperCase'
        @title              : 'Rounding Profile'
        RoundingProfile               : String(4);
        @sap.display.format : 'UpperCase'
        @title              : 'Storage Location'
        @sap.quickinfo      : 'Issue Storage Location'
        StorageLocation               : String(4);
};

@cds.external         : true
@cds.persistence.skip : true
@sap.deletable        : 'false'
@sap.content.version  : '1'
@title                : 'Procurement Data'
entity API_PRODUCT_SRV.A_ProductPlantProcurement {
        @sap.display.format : 'UpperCase'
        @title              : 'Product'
        @sap.quickinfo      : 'Product Number'
    key Product                      : String(40) not null;
        @sap.display.format : 'UpperCase'
        @title              : 'Plant'
    key Plant                        : String(4) not null;
        @sap.display.format : 'UpperCase'
        @title              : 'Automatic PO'
        @sap.quickinfo      : 'Indicator: &quot;automatic purchase order allowed&quot;'
        IsAutoPurOrdCreationAllowed  : Boolean;
        @sap.display.format : 'UpperCase'
        @title              : 'Source list'
        @sap.quickinfo      : 'Indicator: Source list requirement'
        IsSourceListRequired         : Boolean;
        @sap.display.format : 'UpperCase'
        @title              : 'Source of supply'
        @sap.quickinfo      : 'Source of Supply'
        SourceOfSupplyCategory       : String(1);
        @sap.display.format : 'UpperCase'
        @title              : 'JIT Delivery'
        @sap.quickinfo      : 'JIT Delivery Schedules'
        ItmIsRlvtToJITDelivSchedules : String(1);
};

@cds.external         : true
@cds.persistence.skip : true
@sap.deletable        : 'false'
@sap.content.version  : '1'
@title                : 'Quality Management Data'
entity API_PRODUCT_SRV.A_ProductPlantQualityMgmt {
        @sap.display.format : 'UpperCase'
        @title              : 'Product'
        @sap.quickinfo      : 'Product Number'
    key Product                        : String(40) not null;
        @sap.display.format : 'UpperCase'
        @title              : 'Plant'
    key Plant                          : String(4) not null;
        @title              : 'Max. Storage Period'
        @sap.quickinfo      : 'Maximum Storage Period'
        MaximumStoragePeriod           : Decimal(5, 0);
        @sap.display.format : 'UpperCase'
        @title              : 'QM Control Key'
        @sap.quickinfo      : 'Control Key for Quality Management in Procurement'
        QualityMgmtCtrlKey             : String(8);
        @sap.display.format : 'UpperCase'
        @title              : 'QM Material Auth.'
        @sap.quickinfo      : 'Material Authorization Group for Activities in QM'
        MatlQualityAuthorizationGroup  : String(6);
        @sap.display.format : 'UpperCase'
        @title              : 'Post to insp. stock'
        @sap.quickinfo      : 'Has Post to Inspection Stock'
        HasPostToInspectionStock       : Boolean;
        @sap.display.format : 'UpperCase'
        @title              : 'Documentation reqd'
        @sap.quickinfo      : 'Documentation required indicator'
        InspLotDocumentationIsRequired : Boolean;
        @sap.display.format : 'UpperCase'
        @title              : 'Target QM System'
        @sap.quickinfo      : 'Required QM System for Supplier'
        SuplrQualityManagementSystem   : String(4);
        @title              : 'Inspection Interval'
        @sap.quickinfo      : 'Interval Until Next Recurring Inspection'
        RecrrgInspIntervalTimeInDays   : Decimal(5, 0);
        @sap.display.format : 'UpperCase'
        @title              : 'Certificate Type'
        ProductQualityCertificateType  : String(4);
};

@cds.external         : true
@cds.persistence.skip : true
@sap.deletable        : 'false'
@sap.content.version  : '1'
@title                : 'Sales Data at Plant Level'
entity API_PRODUCT_SRV.A_ProductPlantSales {
        @sap.display.format : 'UpperCase'
        @title              : 'Product'
        @sap.quickinfo      : 'Product Number'
    key Product                        : String(40) not null;
        @sap.display.format : 'UpperCase'
        @title              : 'Plant'
    key Plant                          : String(4) not null;
        @sap.display.format : 'UpperCase'
        @title              : 'Loading Group'
        LoadingGroup                   : String(4);
        @sap.display.format : 'UpperCase'
        @title              : 'Replacement Part'
        @sap.quickinfo      : 'Replacement part'
        ReplacementPartType            : String(1);
        @sap.unit           : 'BaseUnit'
        @title              : 'Base quantity'
        @sap.quickinfo      : 'Base quantity for capacity planning in shipping'
        CapPlanningQuantityInBaseUoM   : Decimal(13, 3);
        @title              : 'Processing time'
        @sap.quickinfo      : 'Shipping processing time'
        ProductShippingProcessingTime  : Decimal(5, 2);
        @title              : 'Setup time'
        @sap.quickinfo      : 'Shipping setup time'
        WrkCentersShipgSetupTimeInDays : Decimal(5, 2);
        @sap.display.format : 'UpperCase'
        @title              : 'Availability check'
        @sap.quickinfo      : 'Checking Group for Availability Check'
        AvailabilityCheckType          : String(2);
        @title              : 'Base Unit of Measure'
        @sap.semantics      : 'unit-of-measure'
        BaseUnit                       : String(3);
};

@cds.external         : true
@cds.persistence.skip : true
@sap.deletable        : 'false'
@sap.content.version  : '1'
@title                : 'Storage Data at Plant Level'
entity API_PRODUCT_SRV.A_ProductPlantStorage {
        @sap.display.format : 'UpperCase'
        @title              : 'Product'
        @sap.quickinfo      : 'Product Number'
    key Product                        : String(40) not null;
        @sap.display.format : 'UpperCase'
        @title              : 'Plant'
    key Plant                          : String(4) not null;
        @sap.display.format : 'UpperCase'
        @title              : 'CC Phys. Inv. Ind.'
        @sap.quickinfo      : 'Physical Inventory Indicator for Cycle Counting'
        InventoryForCycleCountInd      : String(1);
        @sap.display.format : 'UpperCase'
        @title              : 'Service Level'
        @sap.quickinfo      : 'IS-R service level'
        ProvisioningServiceLevel       : String(1);
        @sap.display.format : 'UpperCase'
        @title              : 'CC indicator fixed'
        @sap.quickinfo      : 'CC indicator is fixed'
        CycleCountingIndicatorIsFixed  : Boolean;
        @title              : 'Time unit'
        @sap.quickinfo      : 'Unit for maximum storage period'
        @sap.semantics      : 'unit-of-measure'
        ProdMaximumStoragePeriodUnit   : String(3);
        @sap.display.format : 'UpperCase'
        @title              : 'Putaway/StkRmvl'
        @sap.quickinfo      : 'Strategy for Putaway and Stock Removal'
        WrhsMgmtPtwyAndStkRemovalStrgy : String(1);
};

@cds.external         : true
@cds.persistence.skip : true
@sap.content.version  : '1'
@title                : 'Plant Text'
entity API_PRODUCT_SRV.A_ProductPlantText {
        @sap.display.format : 'UpperCase'
        @title              : 'Material'
        @sap.quickinfo      : 'Material Number'
    key Product  : String(40) not null;
        @sap.display.format : 'UpperCase'
        @title              : 'Plant'
    key Plant    : String(4) not null;
        @title              : 'String'
        @sap.heading        : ''
        LongText : LargeString;
};

@cds.external         : true
@cds.persistence.skip : true
@sap.deletable        : 'false'
@sap.content.version  : '1'
@title                : 'Basic Procurement Data'
entity API_PRODUCT_SRV.A_ProductProcurement {
        @sap.display.format : 'UpperCase'
        @title              : 'Material'
        @sap.quickinfo      : 'Material Number'
    key Product                   : String(40) not null;
        @title              : 'Order Unit'
        @sap.quickinfo      : 'Purchase Order Unit of Measure'
        @sap.semantics      : 'unit-of-measure'
        PurchaseOrderQuantityUnit : String(3);
        @sap.display.format : 'UpperCase'
        @title              : 'Var. Order Unit'
        @sap.quickinfo      : 'Variable Purchase Order Unit Active'
        VarblPurOrdUnitStatus     : String(1);
        @sap.display.format : 'UpperCase'
        @title              : 'Purchasing value key'
        @sap.quickinfo      : 'Purchasing Value Key'
        PurchasingAcknProfile     : String(4);
};

@cds.external         : true
@cds.persistence.skip : true
@sap.content.version  : '1'
@title                : 'Purchase Text'
entity API_PRODUCT_SRV.A_ProductPurchaseText {
        @sap.display.format : 'UpperCase'
        @title              : 'Material'
        @sap.quickinfo      : 'Material Number'
    key Product  : String(40) not null;
        @title              : 'Language Key'
    key Language : String(2) not null;
        @title              : 'String'
        @sap.heading        : ''
        LongText : LargeString;
};

@cds.external         : true
@cds.persistence.skip : true
@sap.deletable        : 'false'
@sap.content.version  : '1'
@title                : 'Basic Quality Management Data'
entity API_PRODUCT_SRV.A_ProductQualityMgmt {
        @sap.display.format : 'UpperCase'
        @title              : 'Product'
        @sap.quickinfo      : 'Product Number'
    key Product                  : String(40) not null;
        @sap.display.format : 'UpperCase'
        @title              : 'QM in Procur. Active'
        @sap.quickinfo      : 'QM in Procurement Is Active'
        QltyMgmtInProcmtIsActive : Boolean;
};

@cds.external         : true
@cds.persistence.skip : true
@sap.deletable        : 'false'
@sap.content.version  : '1'
@title                : 'Basic Sales Data'
entity API_PRODUCT_SRV.A_ProductSales {
        @sap.display.format : 'UpperCase'
        @title              : 'Material'
        @sap.quickinfo      : 'Material Number'
    key Product                 : String(40) not null;
        @sap.display.format : 'UpperCase'
        @title              : 'X-distr.chain status'
        @sap.quickinfo      : 'Cross-Distribution-Chain Material Status'
        SalesStatus             : String(2);
        @sap.display.format : 'Date'
        @title              : 'Cross-Distr. Chain Product Validity'
        @sap.quickinfo      : 'Date from which the X-distr.-chain Product status is valid'
        SalesStatusValidityDate : Date;
        @sap.display.format : 'UpperCase'
        @title              : 'Tax classification'
        @sap.quickinfo      : 'Tax classification of the material'
        TaxClassification       : String(1);
        @sap.display.format : 'UpperCase'
        @title              : 'Transportation Group'
        TransportationGroup     : String(4);
};

@cds.external         : true
@cds.persistence.skip : true
@sap.deletable        : 'false'
@sap.content.version  : '1'
@title                : 'Sales Organization Data'
entity API_PRODUCT_SRV.A_ProductSalesDelivery {
        @sap.display.format : 'UpperCase'
        @title              : 'Product'
        @sap.quickinfo      : 'Product Number'
    key Product                        : String(40) not null;
        @sap.display.format : 'UpperCase'
        @title              : 'Sales Organization'
    key ProductSalesOrg                : String(4) not null;
        @sap.display.format : 'UpperCase'
        @title              : 'Distribution Channel'
    key ProductDistributionChnl        : String(2) not null;
        @sap.unit           : 'BaseUnit'
        @title              : 'Minimum order qty'
        @sap.quickinfo      : 'Minimum order quantity in base unit of measure'
        MinimumOrderQuantity           : Decimal(13, 3);
        @sap.display.format : 'UpperCase'
        @title              : 'Delivering Plant'
        @sap.quickinfo      : 'Delivering Plant (Own or External)'
        SupplyingPlant                 : String(4);
        @sap.display.format : 'UpperCase'
        @title              : 'Product Price Group'
        @sap.quickinfo      : 'Product Pricing Group'
        PriceSpecificationProductGroup : String(2);
        @sap.display.format : 'UpperCase'
        @title              : 'Acct Assmt Grp Mat.'
        @sap.quickinfo      : 'Account Assignment Group for Material'
        AccountDetnProductGroup        : String(2);
        @sap.unit           : 'BaseUnit'
        @title              : 'Minimum Delivery Qty'
        @sap.quickinfo      : 'Minimum Delivery Quantity in Delivery Note Processing'
        DeliveryNoteProcMinDelivQty    : Decimal(13, 3);
        @sap.display.format : 'UpperCase'
        @title              : 'Item Category Group'
        @sap.quickinfo      : 'Item Category Group from Material Master'
        ItemCategoryGroup              : String(4);
        @title              : 'Unit Of Measure'
        @sap.quickinfo      : 'Unit Of Measure Of Delivery Unit'
        @sap.semantics      : 'unit-of-measure'
        DeliveryQuantityUnit           : String(3);
        @sap.unit           : 'DeliveryQuantityUnit'
        @title              : 'Delivery unit'
        DeliveryQuantity               : Decimal(13, 3);
        @sap.display.format : 'UpperCase'
        @title              : 'DChain-spec. status'
        @sap.quickinfo      : 'Distribution-chain-specific material status'
        ProductSalesStatus             : String(2);
        @sap.display.format : 'Date'
        @title              : 'Valid from'
        @sap.quickinfo      : 'Date from which distr.-chain-spec. material status is valid'
        ProductSalesStatusValidityDate : Date;
        @title              : 'Sales Unit'
        @sap.semantics      : 'unit-of-measure'
        SalesMeasureUnit               : String(3);
        @sap.display.format : 'UpperCase'
        @title              : 'DF distr. chain lvl'
        @sap.quickinfo      : 'Ind.: Flag material for deletion at distribution chain level'
        IsMarkedForDeletion            : Boolean;
        @sap.display.format : 'UpperCase'
        @title              : 'Product Hierarchy'
        ProductHierarchy               : String(18);
        @sap.display.format : 'UpperCase'
        @title              : 'Product Group 1'
        FirstSalesSpecProductGroup     : String(3);
        @sap.display.format : 'UpperCase'
        @title              : 'Product Group 2'
        SecondSalesSpecProductGroup    : String(3);
        @sap.display.format : 'UpperCase'
        @title              : 'Product Group 3'
        ThirdSalesSpecProductGroup     : String(3);
        @sap.display.format : 'UpperCase'
        @title              : 'Product Group 4'
        FourthSalesSpecProductGroup    : String(3);
        @sap.display.format : 'UpperCase'
        @title              : 'Product Group 5'
        FifthSalesSpecProductGroup     : String(3);
        @sap.unit           : 'BaseUnit'
        @title              : 'Min. MtO quantity'
        @sap.quickinfo      : 'Minimum make-to-order quantity'
        MinimumMakeToOrderOrderQty     : Decimal(13, 3);
        @title              : 'Base Unit of Measure'
        @sap.semantics      : 'unit-of-measure'
        BaseUnit                       : String(3);
        @sap.display.format : 'UpperCase'
        @title              : 'Matl statistics grp'
        @sap.quickinfo      : 'Material statistics group'
        LogisticsStatisticsGroup       : String(1);
        @sap.display.format : 'UpperCase'
        @title              : 'Volume Rebate Group'
        @sap.quickinfo      : 'Volume rebate group'
        VolumeRebateGroup              : String(2);
        @sap.display.format : 'UpperCase'
        @title              : 'Commission Group'
        ProductCommissionGroup         : String(2);
        @sap.display.format : 'UpperCase'
        @title              : 'Cash Discount'
        @sap.quickinfo      : 'Cash Discount Indicator'
        CashDiscountIsDeductible       : Boolean;
        @sap.display.format : 'UpperCase'
        @title              : 'Pricing Ref. Matl'
        @sap.quickinfo      : 'Pricing Reference Material'
        PricingReferenceProduct        : String(40);
        @sap.display.format : 'UpperCase'
        @title              : 'Rounding Profile'
        RoundingProfile                : String(4);
        @sap.display.format : 'UpperCase'
        @title              : 'Unit of Measure Grp'
        @sap.quickinfo      : 'Unit of Measure Group'
        ProductUnitGroup               : String(4);
        @sap.display.format : 'UpperCase'
        @title              : 'Sales unit not var.'
        @sap.quickinfo      : 'Variable Sales Unit Not Allowed'
        VariableSalesUnitIsNotAllowed  : Boolean;
        @sap.display.format : 'UpperCase'
        @title              : 'Product Attribute 1'
        @sap.quickinfo      : 'ID for product attribute 1'
        ProductHasAttributeID01        : Boolean;
        @sap.display.format : 'UpperCase'
        @title              : 'Product Attribute 2'
        @sap.quickinfo      : 'ID for product attribute 2'
        ProductHasAttributeID02        : Boolean;
        @sap.display.format : 'UpperCase'
        @title              : 'Product Attribute 3'
        @sap.quickinfo      : 'ID for product attribute 3'
        ProductHasAttributeID03        : Boolean;
        @sap.display.format : 'UpperCase'
        @title              : 'Product Attribute 4'
        @sap.quickinfo      : 'ID for product attribute 4'
        ProductHasAttributeID04        : Boolean;
        @sap.display.format : 'UpperCase'
        @title              : 'Product Attribute 5'
        @sap.quickinfo      : 'ID for product attribute 5'
        ProductHasAttributeID05        : Boolean;
        @sap.display.format : 'UpperCase'
        @title              : 'Product Attribute 6'
        @sap.quickinfo      : 'ID for product attribute 6'
        ProductHasAttributeID06        : Boolean;
        @sap.display.format : 'UpperCase'
        @title              : 'Product Attribute 7'
        @sap.quickinfo      : 'ID for product attribute 7'
        ProductHasAttributeID07        : Boolean;
        @sap.display.format : 'UpperCase'
        @title              : 'Product Attribute 8'
        @sap.quickinfo      : 'ID for product attribute 8'
        ProductHasAttributeID08        : Boolean;
        @sap.display.format : 'UpperCase'
        @title              : 'Product Attribute 9'
        @sap.quickinfo      : 'ID for product attribute 9'
        ProductHasAttributeID09        : Boolean;
        @sap.display.format : 'UpperCase'
        @title              : 'Product Attribute 10'
        @sap.quickinfo      : 'ID for product attribute 10'
        ProductHasAttributeID10        : Boolean;
        @cds.ambiguous      : 'missing on condition?'
        to_SalesTax                    : Association to many API_PRODUCT_SRV.A_ProductSalesTax {};
        @cds.ambiguous      : 'missing on condition?'
        to_SalesText                   : Association to many API_PRODUCT_SRV.A_ProductSalesText {};
};

@cds.external         : true
@cds.persistence.skip : true
@sap.content.version  : '1'
@title                : 'Sales Tax Data'
entity API_PRODUCT_SRV.A_ProductSalesTax {
        @sap.display.format : 'UpperCase'
        @title              : 'Product'
        @sap.quickinfo      : 'Product Number'
    key Product           : String(40) not null;
        @sap.display.format : 'UpperCase'
        @title              : 'Departure Ctry/Reg.'
        @sap.quickinfo      : 'Departure Country/Region (from which the goods are sent)'
    key Country           : String(3) not null;
        @sap.display.format : 'UpperCase'
        @title              : 'Tax Condition Type'
        @sap.quickinfo      : 'Tax Condition Type (Sales Tax, Value-Added Tax,...)'
    key TaxCategory       : String(4) not null;
    key TaxClassification : String(1) not null;
};

@cds.external         : true
@cds.persistence.skip : true
@sap.content.version  : '1'
@title                : 'Sales Text'
entity API_PRODUCT_SRV.A_ProductSalesText {
        @sap.display.format : 'UpperCase'
        @title              : 'Product'
        @sap.quickinfo      : 'Product Number'
    key Product                 : String(40) not null;
        @sap.display.format : 'UpperCase'
        @title              : 'Sales Organization'
    key ProductSalesOrg         : String(4) not null;
        @sap.display.format : 'UpperCase'
        @title              : 'Distribution Channel'
    key ProductDistributionChnl : String(2) not null;
        @title              : 'Language Key'
    key Language                : String(2) not null;
        @title              : 'String'
        @sap.heading        : ''
        LongText                : LargeString;
};

@cds.external         : true
@cds.persistence.skip : true
@sap.deletable        : 'false'
@sap.content.version  : '1'
@title                : 'Basic Storage Data'
entity API_PRODUCT_SRV.A_ProductStorage {
        @sap.display.format : 'UpperCase'
        @title              : 'Material'
        @sap.quickinfo      : 'Material Number'
    key Product                       : String(40) not null;
        @sap.display.format : 'UpperCase'
        @title              : 'Storage conditions'
        StorageConditions             : String(2);
        @sap.display.format : 'UpperCase'
        @title              : 'Temp. conditions'
        @sap.quickinfo      : 'Temperature conditions indicator'
        TemperatureConditionInd       : String(2);
        @sap.display.format : 'UpperCase'
        @title              : 'Haz. material number'
        @sap.quickinfo      : 'Hazardous material number'
        HazardousMaterialNumber       : String(40);
        @sap.unit           : 'BaseUnit'
        @title              : 'GR slips quantity'
        @sap.quickinfo      : 'Quantity: Number of GR/GI slips to be printed'
        NmbrOfGROrGISlipsToPrintQty   : Decimal(13, 3);
        @sap.display.format : 'UpperCase'
        @title              : 'Label type'
        LabelType                     : String(2);
        @sap.display.format : 'UpperCase'
        @title              : 'Label form'
        LabelForm                     : String(2);
        @title              : 'Min. Rem. Shelf Life'
        @sap.quickinfo      : 'Minimum Remaining Shelf Life'
        MinRemainingShelfLife         : Decimal(4, 0);
        @sap.display.format : 'UpperCase'
        @title              : 'Expiration Date'
        ExpirationDate                : String(1);
        @sap.display.format : 'UpperCase'
        @title              : 'Period Ind. for SLED'
        @sap.quickinfo      : 'Period Indicator for Shelf Life Expiration Date'
        ShelfLifeExpirationDatePeriod : String(1);
        @title              : 'Total shelf life'
        TotalShelfLife                : Decimal(4, 0);
        @title              : 'Base Unit of Measure'
        @sap.semantics      : 'unit-of-measure'
        BaseUnit                      : String(3);
};

@cds.external         : true
@cds.persistence.skip : true
@sap.deletable        : 'false'
@sap.content.version  : '1'
@title                : 'Storage Location Data'
entity API_PRODUCT_SRV.A_ProductStorageLocation {
        @sap.display.format : 'UpperCase'
        @title              : 'Material'
        @sap.quickinfo      : 'Material Number'
    key Product                        : String(40) not null;
        @sap.display.format : 'UpperCase'
        @title              : 'Plant'
    key Plant                          : String(4) not null;
        @sap.display.format : 'UpperCase'
        @title              : 'Storage Location'
    key StorageLocation                : String(4) not null;
        @sap.display.format : 'UpperCase'
        @title              : 'Storage Bin'
        WarehouseStorageBin            : String(10);
        @sap.display.format : 'UpperCase'
        @title              : 'Maintenance status'
        @sap.creatable      : 'false'
        @sap.updatable      : 'false'
        MaintenanceStatus              : String(15);
        @sap.display.format : 'UpperCase'
        @title              : 'Phys. Inv. Block'
        @sap.quickinfo      : 'Physical Inventory Blocking Indicator'
        PhysicalInventoryBlockInd      : String(1);
        @sap.display.format : 'Date'
        @title              : 'Created On'
        @sap.creatable      : 'false'
        @sap.updatable      : 'false'
        CreationDate                   : Date;
        @sap.display.format : 'UpperCase'
        @title              : 'DF stor. loc. level'
        @sap.quickinfo      : 'Flag Material for Deletion at Storage Location Level'
        IsMarkedForDeletion            : Boolean;
        @sap.display.format : 'Date'
        @title              : 'Date of Last Count'
        @sap.quickinfo      : 'Date of Last Posted Count'
        DateOfLastPostedCntUnRstrcdStk : Date;
        @title              : 'Invent. corr. factor'
        @sap.quickinfo      : 'Inventory Correction Factor'
        InventoryCorrectionFactor      : Double;
        @sap.display.format : 'UpperCase'
        @title              : 'Restricted-use stock'
        @sap.quickinfo      : 'Physical inventory indicator for restricted-use stock'
        InvtryRestrictedUseStockInd    : String(3);
        @sap.display.format : 'UpperCase'
        @title              : 'Warehouse stock CY'
        @sap.quickinfo      : 'Physical inventory indicator for whse stock in current year'
        InvtryCurrentYearStockInd      : String(3);
        @sap.display.format : 'UpperCase'
        @title              : 'Qual. insp. stock CY'
        @sap.quickinfo      : 'Phys. inventory ind. f. stock in qual. insp. in current year'
        InvtryQualInspCurrentYrStkInd  : String(3);
        @sap.display.format : 'UpperCase'
        @title              : 'Blocked stock'
        @sap.quickinfo      : 'Physical inventory indicator for blocked stock'
        InventoryBlockStockInd         : String(3);
        @sap.display.format : 'UpperCase'
        @title              : 'Restricted use, PP'
        @sap.quickinfo      : 'Physical inventory ind. for restricted-use stock, prev.pd'
        InvtryRestStockPrevPeriodInd   : String(3);
        @sap.display.format : 'UpperCase'
        @title              : 'Warehouse stock PY'
        @sap.quickinfo      : 'Physical inventory indicator for stock in previous year'
        InventoryStockPrevPeriod       : String(3);
        @sap.display.format : 'UpperCase'
        @title              : 'QualInspStock prv.pd'
        @sap.quickinfo      : 'Phys. inventory ind. f. stock in qual. insp. in prev. period'
        InvtryStockQltyInspPrevPeriod  : String(3);
        @sap.display.format : 'UpperCase'
        @title              : 'Blcked stock prev.pd'
        @sap.quickinfo      : 'Phys. inventory indicator for blocked stock in prev. period'
        HasInvtryBlockStockPrevPeriod  : String(3);
        @sap.display.format : 'NonNegative'
        FiscalYearCurrentPeriod        : String(4);
        @sap.display.format : 'NonNegative'
        FiscalMonthCurrentPeriod       : String(2);
        @sap.display.format : 'NonNegative'
        @title              : 'Fiscal year of current physical inventory indicator'
        @sap.heading        : ''
        FiscalYearCurrentInvtryPeriod  : String(4);
        @sap.display.format : 'UpperCase'
        @title              : 'Picking area'
        @sap.quickinfo      : 'Picking area for lean WM'
        LeanWrhsManagementPickingArea  : String(3);
};

@cds.external         : true
@cds.persistence.skip : true
@sap.deletable        : 'false'
@sap.content.version  : '1'
@title                : 'Supply Planning Data'
entity API_PRODUCT_SRV.A_ProductSupplyPlanning {
        @sap.display.format : 'UpperCase'
        @title              : 'Product'
        @sap.quickinfo      : 'Product Number'
    key Product                        : String(40) not null;
        @sap.display.format : 'UpperCase'
        @title              : 'Plant'
    key Plant                          : String(4) not null;
        @sap.unit           : 'BaseUnit'
        @title              : 'Fixed lot size'
        FixedLotSizeQuantity           : Decimal(13, 3);
        @sap.unit           : 'BaseUnit'
        @title              : 'Maximum Lot Size'
        MaximumLotSizeQuantity         : Decimal(13, 3);
        @sap.unit           : 'BaseUnit'
        @title              : 'Minimum Lot Size'
        MinimumLotSizeQuantity         : Decimal(13, 3);
        @sap.unit           : 'BaseUnit'
        @title              : 'Rounding value'
        @sap.quickinfo      : 'Rounding value for purchase order quantity'
        LotSizeRoundingQuantity        : Decimal(13, 3);
        @sap.display.format : 'UpperCase'
        @title              : 'Lot Sizing Procedure'
        @sap.quickinfo      : 'Lot Sizing Procedure in Materials Planning'
        LotSizingProcedure             : String(2);
        @sap.display.format : 'UpperCase'
        @title              : 'MRP Type'
        MRPType                        : String(2);
        @sap.display.format : 'UpperCase'
        @title              : 'MRP Controller'
        MRPResponsible                 : String(3);
        @sap.unit           : 'BaseUnit'
        @title              : 'Safety Stock'
        SafetyStockQuantity            : Decimal(13, 3);
        @sap.unit           : 'BaseUnit'
        @title              : 'Min. Saf. Stock'
        @sap.quickinfo      : 'Minimum Safety Stock'
        MinimumSafetyStockQuantity     : Decimal(13, 3);
        @sap.display.format : 'NonNegative'
        @title              : 'Planning time fence'
        PlanningTimeFence              : String(3);
        @sap.display.format : 'UpperCase'
        @title              : 'ABC Indicator'
        ABCIndicator                   : String(1);
        @sap.unit           : 'BaseUnit'
        @title              : 'Maximum Stock Level'
        MaximumStockQuantity           : Decimal(13, 3);
        @sap.unit           : 'BaseUnit'
        @title              : 'Reorder Point'
        ReorderThresholdQuantity       : Decimal(13, 3);
        @title              : 'Planned Deliv. Time'
        @sap.quickinfo      : 'Planned Delivery Time in Days'
        PlannedDeliveryDurationInDays  : Decimal(3, 0);
        @sap.display.format : 'NonNegative'
        @title              : 'Safety Time'
        @sap.quickinfo      : 'Safety Time (in Workdays)'
        SafetyDuration                 : String(2);
        @sap.display.format : 'UpperCase'
        @title              : 'Strategy Group'
        @sap.quickinfo      : 'Planning Strategy Group'
        PlanningStrategyGroup          : String(2);
        @title              : 'Tot. repl. lead time'
        @sap.quickinfo      : 'Total replenishment lead time (in workdays)'
        TotalReplenishmentLeadTime     : Decimal(3, 0);
        @sap.display.format : 'UpperCase'
        @title              : 'Procurement Type'
        ProcurementType                : String(1);
        @sap.display.format : 'UpperCase'
        @title              : 'Special Procurement'
        @sap.quickinfo      : 'Special Procurement Type'
        ProcurementSubType             : String(2);
        @title              : 'Assembly scrap (%)'
        @sap.quickinfo      : 'Assembly scrap in percent'
        AssemblyScrapPercent           : Decimal(5, 2);
        @sap.display.format : 'UpperCase'
        @title              : 'Availability check'
        @sap.quickinfo      : 'Checking Group for Availability Check'
        AvailabilityCheckType          : String(2);
        @title              : 'GR processing time'
        @sap.quickinfo      : 'Goods receipt processing time in days'
        GoodsReceiptDuration           : Decimal(3, 0);
        @sap.display.format : 'UpperCase'
        @title              : 'MRP Group'
        MRPGroup                       : String(4);
        @sap.display.format : 'UpperCase'
        @title              : 'Storage Location'
        @sap.quickinfo      : 'Default Storage Location for External Procurement'
        DfltStorageLocationExtProcmt   : String(4);
        @sap.display.format : 'UpperCase'
        @title              : 'Consumption mode'
        ProdRqmtsConsumptionMode       : String(1);
        @sap.display.format : 'NonNegative'
        @title              : 'Backward Consumption Period'
        @sap.quickinfo      : 'Consumption Period: Backward'
        BackwardCnsmpnPeriodInWorkDays : String(3);
        @sap.display.format : 'NonNegative'
        @title              : 'Forward Consumption Period'
        @sap.quickinfo      : 'Consumption period: Forward'
        FwdConsumptionPeriodInWorkDays : String(3);
        @title              : 'Base Unit of Measure'
        @sap.semantics      : 'unit-of-measure'
        BaseUnit                       : String(3);
        @sap.display.format : 'UpperCase'
        @title              : 'Planning Cycle'
        PlanAndOrderDayDetermination   : String(3);
        @sap.display.format : 'UpperCase'
        @title              : 'Rounding Profile'
        RoundingProfile                : String(4);
        @sap.unit           : 'Currency'
        @title              : 'LS-Independent Costs'
        @sap.quickinfo      : 'Lot-Size-Independent Costs'
        LotSizeIndependentCosts        : Decimal(12, 3);
        @sap.display.format : 'UpperCase'
        @title              : 'Planning Calendar'
        MRPPlanningCalendar            : String(3);
        @sap.display.format : 'UpperCase'
        @title              : 'Coverage Profile'
        @sap.quickinfo      : 'Range-of-Coverage Profile'
        RangeOfCvrgPrflCode            : String(3);
        @sap.display.format : 'UpperCase'
        @title              : 'Safety Time'
        @sap.quickinfo      : 'Safety Time Indicator (with or without safety time)'
        IsSafetyTime                   : String(1);
        @sap.display.format : 'UpperCase'
        @title              : 'Time Profile'
        @sap.quickinfo      : 'Period Profile for Safety Time'
        PerdPrflForSftyTme             : String(3);
        @sap.display.format : 'UpperCase'
        @title              : 'MRP Relevant'
        @sap.quickinfo      : 'MRP relevancy for dependent requirements'
        IsMRPDependentRqmt             : String(1);
        @title              : 'In-house production'
        @sap.quickinfo      : 'In-house production time'
        InHouseProductionTime          : Decimal(3, 0);
        @sap.display.format : 'UpperCase'
        @title              : 'Cross-Project'
        @sap.quickinfo      : 'Indicator for Cross-Project Material'
        ProductIsForCrossProject       : String(1);
        @sap.display.format : 'UpperCase'
        @title              : 'Storage Costs Code'
        @sap.quickinfo      : 'Storage Costs Percentage Code'
        StorageCostsPercentageCode     : String(1);
        @title              : 'Service level (%)'
        @sap.quickinfo      : 'Service level'
        SrvcLvl                        : Decimal(3, 1);
        @sap.display.format : 'UpperCase'
        @title              : 'Mixed MRP'
        @sap.quickinfo      : 'Mixed MRP indicator'
        MRPAvailabilityType            : String(1);
        @sap.display.format : 'UpperCase'
        @title              : 'Follow-Up Material'
        FollowUpProduct                : String(40);
        @sap.display.format : 'UpperCase'
        @title              : 'Repetitive Manufacturing Enabled'
        RepetitiveManufacturingIsAllwd : Boolean;
        @sap.display.format : 'UpperCase'
        @title              : 'Indiv./ Coll.'
        @sap.quickinfo      : 'Indicator for Individual and Collective Requirements'
        DependentRequirementsType      : String(1);
        @sap.display.format : 'UpperCase'
        @title              : 'Bulk Material'
        @sap.quickinfo      : 'Indicator: Bulk Material'
        IsBulkMaterialComponent        : Boolean;
        @sap.display.format : 'UpperCase'
        @title              : 'Repetitive Manufacturing Profile'
        RepetitiveManufacturingProfile : String(4);
        @title              : 'Takt time'
        RqmtQtyRcptTaktTmeInWrkgDays   : Decimal(3, 0);
        @sap.display.format : 'UpperCase'
        @title              : 'Splitting Indicator'
        ForecastRequirementsAreSplit   : String(1);
        @sap.display.format : 'Date'
        @title              : 'Effective-Out Date'
        EffectiveOutDate               : Date;
        @sap.display.format : 'UpperCase'
        @title              : 'MRP profile'
        @sap.quickinfo      : 'Material: MRP profile'
        MRPProfile                     : String(4);
        @title              : 'Component Scrap (%)'
        @sap.quickinfo      : 'Component Scrap in Percent'
        ComponentScrapInPercent        : Decimal(5, 2);
        @sap.display.format : 'UpperCase'
        @title              : 'Discontinuation ind.'
        @sap.quickinfo      : 'Discontinuation indicator'
        ProductIsToBeDiscontinued      : String(1);
        @sap.display.format : 'UpperCase'
        @title              : 'Requirements group'
        @sap.quickinfo      : 'Indicator for Requirements Grouping'
        ProdRqmtsAreConsolidated       : String(1);
        @sap.display.format : 'UpperCase'
        @title              : 'Backflush'
        @sap.quickinfo      : 'Indicator: Backflush'
        MatlCompIsMarkedForBackflush   : String(1);
        @sap.display.format : 'UpperCase'
        @title              : 'Proposed Supply Area'
        @sap.quickinfo      : 'Proposed Supply Area in Material Master Record'
        ProposedProductSupplyArea      : String(10);
        @sap.display.format : 'UpperCase'
        @title              : 'Currency'
        @sap.quickinfo      : 'Currency Key'
        @sap.semantics      : 'currency-code'
        Currency                       : String(5);
        @sap.display.format : 'UpperCase'
        @title              : 'Action Control'
        @sap.quickinfo      : 'Action Control: Planned Order Processing'
        PlannedOrderActionControl      : String(2);
};

@cds.external         : true
@cds.persistence.skip : true
@sap.content.version  : '1'
@title                : 'Units of Measure'
entity API_PRODUCT_SRV.A_ProductUnitsOfMeasure {
        @sap.display.format : 'UpperCase'
        @title              : 'Product'
        @sap.quickinfo      : 'Product Number'
    key Product                       : String(40) not null;
        @title              : 'AlternativeUnit'
        @sap.quickinfo      : 'Alternative Unit of Measure for Stockkeeping Unit'
        @sap.semantics      : 'unit-of-measure'
    key AlternativeUnit               : String(3) not null;
        @sap.unit           : 'BaseUnit'
        @title              : 'Units / Quantity - Base Unit of Measure'
        @sap.quickinfo      : 'Numerator for Conversion to Base Units of Measure'
        QuantityNumerator             : Decimal(5, 0);
        @sap.unit           : 'AlternativeUnit'
        @title              : 'Units / Quantity - Alt Unit of Measure'
        @sap.quickinfo      : 'Denominator for conversion to base units of measure'
        QuantityDenominator           : Decimal(5, 0);
        @sap.unit           : 'VolumeUnit'
        @title              : 'Volume'
        MaterialVolume                : Decimal(13, 3);
        @title              : 'Volume Unit'
        @sap.semantics      : 'unit-of-measure'
        VolumeUnit                    : String(3);
        @sap.unit           : 'WeightUnit'
        @title              : 'Gross Weight'
        GrossWeight                   : Decimal(13, 3);
        @title              : 'Unit of Weight'
        @sap.semantics      : 'unit-of-measure'
        WeightUnit                    : String(3);
        @sap.display.format : 'UpperCase'
        @title              : 'EAN/UPC'
        @sap.quickinfo      : 'International Article Number (EAN/UPC)'
        GlobalTradeItemNumber         : String(18);
        @sap.display.format : 'UpperCase'
        @title              : 'GTIN Category'
        @sap.quickinfo      : 'Category of Global Trade Item Number (GTIN)'
        GlobalTradeItemNumberCategory : String(2);
        @sap.unit           : 'ProductMeasurementUnit'
        @title              : 'Length'
        UnitSpecificProductLength     : Decimal(13, 3);
        @sap.unit           : 'ProductMeasurementUnit'
        @title              : 'Width'
        UnitSpecificProductWidth      : Decimal(13, 3);
        @sap.unit           : 'ProductMeasurementUnit'
        @title              : 'Height'
        UnitSpecificProductHeight     : Decimal(13, 3);
        @title              : 'Unit of Dimension'
        @sap.quickinfo      : 'Unit of Dimension for Length/Width/Height'
        @sap.semantics      : 'unit-of-measure'
        ProductMeasurementUnit        : String(3);
        @title              : 'Lower-level unit'
        @sap.quickinfo      : 'Lower-Level Unit of Measure in a Packing Hierarchy'
        @sap.semantics      : 'unit-of-measure'
        LowerLevelPackagingUnit       : String(3);
        @title              : 'Rem.Vol.After Nestng'
        @sap.quickinfo      : 'Remaining Volume after Nesting (in Percentage)'
        RemainingVolumeAfterNesting   : Decimal(3, 0);
        @odata.Type         : 'Edm.Byte'
        @title              : 'Max. Stacking Factor'
        @sap.quickinfo      : 'Maximum Stacking Factor'
        MaximumStackingFactor         : Integer;
        @title              : 'Capacity Usage'
        CapacityUsage                 : Decimal(15, 3);
        @title              : 'Base Unit of Measure'
        @sap.semantics      : 'unit-of-measure'
        BaseUnit                      : String(3);
        @cds.ambiguous      : 'missing on condition?'
        to_InternationalArticleNumber : Association to many API_PRODUCT_SRV.A_ProductUnitsOfMeasureEAN {};
};

@cds.external         : true
@cds.persistence.skip : true
@sap.content.version  : '1'
@title                : 'GTIN Data'
entity API_PRODUCT_SRV.A_ProductUnitsOfMeasureEAN {
        @sap.display.format : 'UpperCase'
        @title              : 'Material'
        @sap.quickinfo      : 'Material Number'
    key Product                       : String(40) not null;
        @title              : 'Display Unit/Measure'
        @sap.quickinfo      : 'Unit of Measure for Display'
        @sap.semantics      : 'unit-of-measure'
    key AlternativeUnit               : String(3) not null;
        @sap.display.format : 'UpperCase'
        @title              : 'Consecutive number'
        @sap.quickinfo      : 'Consecutive Number'
    key ConsecutiveNumber             : String(5) not null;
        @sap.display.format : 'UpperCase'
        @title              : 'EAN/UPC'
        @sap.quickinfo      : 'International Article Number (EAN/UPC)'
        ProductStandardID             : String(18);
        @sap.display.format : 'UpperCase'
        @title              : 'GTIN Category'
        @sap.quickinfo      : 'Category of Global Trade Item Number (GTIN)'
        InternationalArticleNumberCat : String(2);
        @sap.display.format : 'UpperCase'
        @title              : 'Main EAN'
        @sap.quickinfo      : 'Indicator: Main EAN'
        IsMainGlobalTradeItemNumber   : Boolean;
};

@cds.external         : true
@cds.persistence.skip : true
@sap.deletable        : 'false'
@sap.content.version  : '1'
@title                : 'Valuation Area Data'
entity API_PRODUCT_SRV.A_ProductValuation {
        @sap.display.format : 'UpperCase'
        @title              : 'Material'
        @sap.quickinfo      : 'Material Number'
    key Product                       : String(40) not null;
        @sap.display.format : 'UpperCase'
        @title              : 'Valuation Area'
    key ValuationArea                 : String(4) not null;
        @sap.display.format : 'UpperCase'
        @title              : 'Valuation Type'
    key ValuationType                 : String(10) not null;
        @sap.display.format : 'UpperCase'
        @title              : 'Valuation Class'
        ValuationClass                : String(4);
        @sap.display.format : 'UpperCase'
        @title              : 'Price determ.'
        @sap.quickinfo      : 'Material Price Determination: Control'
        PriceDeterminationControl     : String(1);
        @sap.unit           : 'Currency'
        @title              : 'Standard price'
        StandardPrice                 : Decimal(12, 3);
        @title              : 'Price unit'
        PriceUnitQty                  : Decimal(5, 0);
        @sap.display.format : 'UpperCase'
        @title              : 'Price Control'
        InventoryValuationProcedure   : String(1);
        @sap.display.format : 'UpperCase'
        @title              : 'Del. flag val. type'
        @sap.quickinfo      : 'Deletion flag for all material data of a valuation type'
        IsMarkedForDeletion           : Boolean;
        @sap.unit           : 'Currency'
        @title              : 'Moving price'
        @sap.quickinfo      : 'Moving Average Price/Periodic Unit Price'
        MovingAveragePrice            : Decimal(12, 3);
        @sap.display.format : 'UpperCase'
        @title              : 'Valuation Category'
        ValuationCategory             : String(1);
        @sap.display.format : 'UpperCase'
        @title              : 'Product Usage'
        @sap.quickinfo      : 'Usage of the Product'
        ProductUsageType              : String(1);
        @sap.display.format : 'UpperCase'
        @title              : 'Product Origin'
        @sap.quickinfo      : 'Origin of the Product'
        ProductOriginType             : String(1);
        @sap.display.format : 'UpperCase'
        @title              : 'Produced in-house'
        IsProducedInhouse             : Boolean;
        @sap.display.format : 'NonNegative'
        @title              : 'ProdCostEst.No.'
        @sap.quickinfo      : 'Cost Estimate Number - Product Costing'
        ProdCostEstNumber             : String(12);
        @sap.display.format : 'UpperCase'
        @title              : 'Proj. stk val. class'
        @sap.quickinfo      : 'Valuation Class for Project Stock'
        ProjectStockValuationClass    : String(4);
        @sap.display.format : 'UpperCase'
        @title              : 'VC: Sales order stk'
        @sap.quickinfo      : 'Valuation Class for Sales Order Stock'
        ValuationClassSalesOrderStock : String(4);
        @sap.unit           : 'Currency'
        @title              : 'Planned price 1'
        @sap.quickinfo      : 'Future Planned Price 1'
        PlannedPrice1InCoCodeCrcy     : Decimal(12, 3);
        @sap.unit           : 'Currency'
        @title              : 'Planned price 2'
        @sap.quickinfo      : 'Future Planned Price 2'
        PlannedPrice2InCoCodeCrcy     : Decimal(12, 3);
        @sap.unit           : 'Currency'
        @title              : 'Planned price 3'
        @sap.quickinfo      : 'Future Planned Price 3'
        PlannedPrice3InCoCodeCrcy     : Decimal(12, 3);
        @sap.display.format : 'Date'
        @title              : 'Planned price date 1'
        @sap.quickinfo      : 'Date from Which Future Planned Price 1 Is Valid'
        FuturePlndPrice1ValdtyDate    : Date;
        @sap.display.format : 'Date'
        @title              : 'Planned price date 2'
        @sap.quickinfo      : 'Date from Which Future Planned Price 2 Is Valid'
        FuturePlndPrice2ValdtyDate    : Date;
        @sap.display.format : 'Date'
        @title              : 'Planned price date 3'
        @sap.quickinfo      : 'Date from Which Future Planned Price 3 Is Valid'
        FuturePlndPrice3ValdtyDate    : Date;
        @sap.unit           : 'BaseUnit'
        @title              : 'Price Unit'
        @sap.quickinfo      : 'Price unit for valuation prices based on tax/commercial law'
        TaxBasedPricesPriceUnitQty    : Decimal(5, 0);
        @sap.display.format : 'Date'
        @title              : 'Last Price Change'
        @sap.quickinfo      : 'Date of Last Price Change'
        PriceLastChangeDate           : Date;
        @sap.unit           : 'Currency'
        @title              : 'Future Planned Price'
        PlannedPrice                  : Decimal(12, 3);
        @sap.unit           : 'Currency'
        @title              : 'Previous Price'
        PrevInvtryPriceInCoCodeCrcy   : Decimal(12, 3);
        @sap.display.format : 'UpperCase'
        @title              : 'Currency'
        @sap.quickinfo      : 'Currency Key'
        @sap.semantics      : 'currency-code'
        Currency                      : String(5);
        @title              : 'Base Unit of Measure'
        @sap.semantics      : 'unit-of-measure'
        BaseUnit                      : String(3);
        @cds.ambiguous      : 'missing on condition?'
        to_MLAccount                  : Association to many API_PRODUCT_SRV.A_ProductMLAccount {};
        @cds.ambiguous      : 'missing on condition?'
        to_MLPrices                   : Association to many API_PRODUCT_SRV.A_ProductMLPrices {};
        @cds.ambiguous      : 'missing on condition?'
        to_ValuationAccount           : Association to API_PRODUCT_SRV.A_ProductValuationAccount {};
        @cds.ambiguous      : 'missing on condition?'
        to_ValuationCosting           : Association to API_PRODUCT_SRV.A_ProductValuationCosting {};
};

@cds.external         : true
@cds.persistence.skip : true
@sap.deletable        : 'false'
@sap.content.version  : '1'
@title                : 'Valuation Account Data'
entity API_PRODUCT_SRV.A_ProductValuationAccount {
        @sap.display.format : 'UpperCase'
        @title              : 'Product'
        @sap.quickinfo      : 'Product Number'
    key Product                      : String(40) not null;
        @sap.display.format : 'UpperCase'
        @title              : 'Valuation Area'
    key ValuationArea                : String(4) not null;
        @sap.display.format : 'UpperCase'
        @title              : 'Valuation Type'
    key ValuationType                : String(10) not null;
        @sap.unit           : 'Currency'
        @title              : 'Commercial price 1'
        @sap.quickinfo      : 'Valuation price based on commercial law: level 1'
        CommercialPrice1InCoCodeCrcy : Decimal(12, 3);
        @sap.unit           : 'Currency'
        @title              : 'Commercial price 2'
        @sap.quickinfo      : 'Valuation price based on commercial law: level 2'
        CommercialPrice2InCoCodeCrcy : Decimal(12, 3);
        @sap.unit           : 'Currency'
        @title              : 'Commercial price 3'
        @sap.quickinfo      : 'Valuation price based on commercial law: level 3'
        CommercialPrice3InCoCodeCrcy : Decimal(12, 3);
        @sap.display.format : 'NonNegative'
        @title              : 'Devaluation Ind.'
        @sap.quickinfo      : 'Lowest value: devaluation indicator'
        DevaluationYearCount         : String(2);
        @title              : 'Future Price'
        FutureEvaluatedAmountValue   : Decimal(12, 3);
        @sap.display.format : 'Date'
        @title              : 'Valid from'
        @sap.quickinfo      : 'Date as of which the price is valid'
        FuturePriceValidityStartDate : Date;
        @sap.display.format : 'UpperCase'
        @title              : 'TRUE'
        @sap.quickinfo      : 'Data element for domain BOOLE: TRUE (=''X'') and FALSE (='' '')'
        IsLIFOAndFIFORelevant        : Boolean;
        @sap.display.format : 'UpperCase'
        @title              : 'LIFO Pool'
        @sap.quickinfo      : 'Pool number for LIFO valuation'
        LIFOValuationPoolNumber      : String(4);
        @sap.unit           : 'Currency'
        @title              : 'Tax price 1'
        @sap.quickinfo      : 'Valuation price based on tax law: level 1'
        TaxPricel1InCoCodeCrcy       : Decimal(12, 3);
        @sap.unit           : 'Currency'
        @title              : 'Tax price 2'
        @sap.quickinfo      : 'Valuation price based on tax law: level 2'
        TaxPrice2InCoCodeCrcy        : Decimal(12, 3);
        @sap.unit           : 'Currency'
        @title              : 'Tax price 3'
        @sap.quickinfo      : 'Valuation price based on tax law: level 3'
        TaxPrice3InCoCodeCrcy        : Decimal(12, 3);
        @sap.display.format : 'UpperCase'
        @title              : 'Currency'
        @sap.quickinfo      : 'Currency Key'
        @sap.semantics      : 'currency-code'
        Currency                     : String(5);
};

@cds.external         : true
@cds.persistence.skip : true
@sap.deletable        : 'false'
@sap.content.version  : '1'
@title                : 'Valuation Costing Data'
entity API_PRODUCT_SRV.A_ProductValuationCosting {
        @sap.display.format : 'UpperCase'
        @title              : 'Product'
        @sap.quickinfo      : 'Product Number'
    key Product                      : String(40) not null;
        @sap.display.format : 'UpperCase'
        @title              : 'Valuation Area'
    key ValuationArea                : String(4) not null;
        @sap.display.format : 'UpperCase'
        @title              : 'Valuation Type'
    key ValuationType                : String(10) not null;
        @sap.display.format : 'UpperCase'
        @title              : 'With Qty Structure'
        @sap.quickinfo      : 'Material Is Costed with Quantity Structure'
        IsMaterialCostedWithQtyStruc : Boolean;
        @sap.display.format : 'UpperCase'
        @title              : 'Material origin'
        @sap.quickinfo      : 'Material-related origin'
        IsMaterialRelatedOrigin      : String(1);
        @sap.display.format : 'UpperCase'
        @title              : 'Origin Group'
        @sap.quickinfo      : 'Origin Group as Subdivision of Cost Element'
        CostOriginGroup              : String(4);
        @sap.display.format : 'UpperCase'
        @title              : 'Overhead Group'
        @sap.quickinfo      : 'Costing Overhead Group'
        CostingOverheadGroup         : String(10);
};

@cds.external         : true
@cds.persistence.skip : true
@sap.deletable        : 'false'
@sap.content.version  : '1'
@title                : 'Work Scheduling Data'
entity API_PRODUCT_SRV.A_ProductWorkScheduling {
        @sap.display.format : 'UpperCase'
        @title              : 'Product'
        @sap.quickinfo      : 'Product Number'
    key Product                       : String(40) not null;
        @sap.display.format : 'UpperCase'
        @title              : 'Plant'
    key Plant                         : String(4) not null;
        @sap.unit           : 'BaseUnit'
        @title              : 'Base quantity'
        MaterialBaseQuantity          : Decimal(13, 3);
        @sap.display.format : 'UpperCase'
        @title              : 'Unltd Overdelivery'
        @sap.quickinfo      : 'Indicator: Unlimited Overdelivery Allowed'
        UnlimitedOverDelivIsAllowed   : Boolean;
        @title              : 'Overdely tolerance'
        @sap.quickinfo      : 'Overdelivery tolerance limit'
        OverDelivToleranceLimit       : Decimal(3, 1);
        @title              : 'Underdely tolerance'
        @sap.quickinfo      : 'Underdelivery tolerance limit'
        UnderDelivToleranceLimit      : Decimal(3, 1);
        @sap.display.format : 'UpperCase'
        @title              : 'Storage Location'
        @sap.quickinfo      : 'Issue Storage Location'
        ProductionInvtryManagedLoc    : String(4);
        @title              : 'Base Unit of Measure'
        @sap.semantics      : 'unit-of-measure'
        BaseUnit                      : String(3);
        @title              : 'Processing time'
        ProductProcessingTime         : Decimal(5, 2);
        @sap.display.format : 'UpperCase'
        @title              : 'Prodn Supervisor'
        @sap.quickinfo      : 'Production Supervisor'
        ProductionSupervisor          : String(3);
        @title              : 'Production unit'
        @sap.semantics      : 'unit-of-measure'
        ProductProductionQuantityUnit : String(3);
        @sap.display.format : 'UpperCase'
        @title              : 'Batch entry'
        @sap.quickinfo      : 'Determination of batch entry in the production/process order'
        ProdnOrderIsBatchRequired     : String(1);
        @sap.display.format : 'UpperCase'
        @title              : 'Material Grouping'
        @sap.quickinfo      : 'Group of Materials for Transition Matrix'
        TransitionMatrixProductsGroup : String(20);
        @sap.display.format : 'UpperCase'
        @title              : 'Change overall prof.'
        @sap.quickinfo      : 'Overall profile for order change management'
        OrderChangeManagementProfile  : String(6);
        @sap.display.format : 'UpperCase'
        @title              : 'Backflush'
        @sap.quickinfo      : 'Indicator: Backflush'
        MatlCompIsMarkedForBackflush  : String(1);
        @title              : 'Setup time'
        @sap.quickinfo      : 'Setup and teardown time'
        SetupAndTeardownTime          : Decimal(5, 2);
        @sap.display.format : 'UpperCase'
        @title              : 'Production Scheduling Profile'
        ProductionSchedulingProfile   : String(6);
        @title              : 'Interoperation'
        @sap.quickinfo      : 'Interoperation time'
        TransitionTime                : Decimal(5, 2);
};
