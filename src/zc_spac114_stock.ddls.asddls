@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Stock - Projection View'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZC_SPAC114_STOCK
  provider contract transactional_query
  as projection on ZR_SPAC114_STOCK
{
  key WarehouseId,
  key ProductId,
      Amount
}
