@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumo: Historial'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZCDT_INCT_H_RC367 
as projection on ZEDT_INCT_H_RC367
{
    key HisUuid,
    IncUuid,
    HisId,
    PreviousStatus,
    NewStatus,
    Text,
    LocalCreatedBy,
    LocalCreatedAt,
    LocalLastChangedBy,
    LocalLastChangedAt,
    LastChangedAt,
    /* Associations */
    _incidente: redirected to parent ZCDT_INCT_RC367
}
