@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumo: Historial'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZCDT_INCT_H_RC367 
as projection on ZEDT_INCT_H_RC367
{
    key HisUuid,
    IncUuid,
    HisId,
    PreviousStatus,
    NewStatus,
    Text,
    @Semantics.systemDateTime.localInstanceLastChangedAt: true
    LocalLastChangedAt,
    @Semantics.systemDateTime.lastChangedAt: true
    LastChangedAt,
    /* Associations */
    _incidente: redirected to parent ZCDT_INCT_RC367
}
