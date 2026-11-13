@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Stock - Root View'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZR_SPAC114_STOCK
  as select from zspac114_stock
{
  key warehouse_id as WarehouseId,
  key product_id   as ProductId,
      amount       as Amount
}
