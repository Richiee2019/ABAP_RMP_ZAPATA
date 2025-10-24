@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface:Incidentes Root PROJ'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZIDT_INCT_RC367 
provider contract transactional_interface
as projection on ZRDT_INCT_RC367
{
    key IncUuid,
    IncidentId,
    Title,
    Description,
    Status,
    Priority,
    CreationDate,
    ChangedDate,
    @Semantics.systemDateTime.localInstanceLastChangedAt: true
    LocalLastChangedAt,
    @Semantics.systemDateTime.lastChangedAt: true
    LastChangedAt,
    /* Associations */
    _historial: redirected to composition child ZIDT_INCT_H_RC367 ,
    _priority,
    _ststus
}
