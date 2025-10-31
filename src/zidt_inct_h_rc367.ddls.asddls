@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface: Histaorial PROJ'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZIDT_INCT_H_RC367 

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
    _incidente: redirected to parent ZIDT_INCT_RC367 
}
