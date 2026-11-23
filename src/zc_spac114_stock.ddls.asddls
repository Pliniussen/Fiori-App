@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Stock - Projection View'
@Metadata.ignorePropagatedAnnotations: true
@UI.headerInfo: { typeName:       'Stock',
                  typeNamePlural: 'Stock',
                  title:          { value: 'ProductName' },
                  description:    { value: 'WarehouseName' }
                  }
define root view entity ZC_SPAC114_STOCK
  provider contract transactional_query
  as projection on ZR_SPAC114_STOCK
{
      @UI.facet: [{ id:       'StockDetails',
                    purpose:  #STANDARD,
                    type:     #IDENTIFICATION_REFERENCE,
                    label:    'Details',
                    position: 10 }]

      @UI.lineItem:       [{ position: 10, label: 'Warehouse ID' }]
      @UI.identification: [{ position: 10, label: 'Warehouse ID' }]
  key WarehouseId,

      @UI.lineItem:       [{ position: 20, label: 'Product ID' }]
      @UI.identification: [{ position: 20, label: 'Product ID' }]
  key ProductId,

      @UI.lineItem:       [{ position: 30, label: 'Warehouse' }]
      @UI.identification: [{ position: 30, label: 'Warehouse' }]
      WarehouseName,

      @UI.lineItem:       [{ position: 40, label: 'City' }]
      @UI.identification: [{ position: 40, label: 'City' }]
      City,

      @UI.identification: [{ position: 50, label: 'Street' }]
      Street,

      @UI.identification: [{ position: 60, label: 'Postal Code' }]
      PostalCode,

      @UI.lineItem:       [{ position: 70, label: 'Product' }]
      @UI.identification: [{ position: 70, label: 'Product' }]
      ProductName,

      @UI.identification: [{ position: 80, label: 'Description' }]
      ProductDescription,

      @UI.lineItem:       [{ position: 90, label: 'Amount' }]
      @UI.identification: [{ position: 90, label: 'Amount' }]
      Amount,

      _Product,
      _Warehouse
}
