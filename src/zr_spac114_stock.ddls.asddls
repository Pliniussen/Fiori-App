@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Stock - Root View'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZR_SPAC114_STOCK
  as select from zspac114_stock

  association [1..1] to zspac114_product as _Product   on $projection.ProductId = _Product.product_id
  association [1..1] to zspac114_whse    as _Warehouse on $projection.WarehouseId = _Warehouse.warehouse_id

{
  key warehouse_id                 as WarehouseId,
  key product_id                   as ProductId,
      amount                       as Amount,

      // Product Info
      _Product.product_name        as ProductName,
      _Product.product_description as ProductDescription,

      // Warehouse Info
      _Warehouse.warehouse_name    as WarehouseName,
      _Warehouse.street            as Street,
      _Warehouse.postal_code       as PostalCode,
      _Warehouse.city              as City,

      // Associations
      _Product,
      _Warehouse
}
