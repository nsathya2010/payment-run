using PaymentRunService as service from '../../srv/service';

annotate service.Jobs with @(
  UI.FieldGroup #GeneratedGroup: {
    $Type: 'UI.FieldGroupType',
    Data : [
      {
        $Type: 'UI.DataField',
        Label: 'Job',
        Value: Job,
      },
      {
        $Type: 'UI.DataField',
        Label: 'Title',
        Value: Title,
      },
      {
        $Type: 'UI.DataField',
        Label: 'Status',
        Value: Status,
      },
    ],
  },
  UI.Facets                    : [
    {
      $Type : 'UI.ReferenceFacet',
      ID    : 'GeneratedFacet1',
      Label : 'General Information',
      Target: '@UI.FieldGroup#GeneratedGroup',
    },
    {
      $Type : 'UI.ReferenceFacet',
      Label : 'Open Vendor Items',
      ID    : 'OpenVendorItems',
      Target: '_Items/@UI.LineItem#OpenVendorItems',
    },
  ],
  UI.LineItem                  : [
    {
      $Type: 'UI.DataField',
      Label: 'Job',
      Value: Job,
    },
    {
      $Type: 'UI.DataField',
      Label: 'Title',
      Value: Title,
    },
    {
      $Type: 'UI.DataField',
      Label: 'Status',
      Value: Status,
    },
  ],
  UI.HeaderInfo                : {
    Title         : {
      $Type: 'UI.DataField',
      Value: Job,
    },
    TypeName      : '',
    TypeNamePlural: '',
  },
);

annotate service.OpenItems with @(UI.LineItem #OpenVendorItems: [
  {
    $Type : 'UI.DataFieldForAction',
    Action: 'PaymentRunService.Change',
    Label : '{i18n>Change}',
  },
  {
    $Type : 'UI.DataFieldForAction',
    Action: 'PaymentRunService.Clear',
    Label : '{i18n>Clear}',
  },
  {
    $Type : 'UI.DataFieldForAction',
    Action: 'PaymentRunService.Reversal',
    Label : '{i18n>Reversal}',
  },
  {
    $Type: 'UI.DataField',
    Value: Vendor,
    Label: 'Vendor',
  },
  {
    $Type: 'UI.DataField',
    Value: Quantity,
    Label: 'Quantity',
  },
  {
    $Type: 'UI.DataField',
    Value: modifiedBy,
  },
  {
    $Type: 'UI.DataField',
    Value: modifiedAt,
  },
  {
    $Type: 'UI.DataField',
    Value: createdAt,
  },
]);
