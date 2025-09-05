using PaymentRunService as service from '../../srv/service';

annotate service.Jobs with @(
  UI.SelectionFields #filterBarMacro: [
    Job,
    Status,
    Title,
  ],
  UI.LineItem #tableMacro           : {$value: [
    {Value: Job, },
    {Value: createdBy, },
    {Value: createdAt, },
    {Value: modifiedAt, },
    {Value: modifiedBy, },
    {Value: Status, },
    {Value: Title, }
  ]},
);

annotate service.OpenItems with @(
  UI.SelectionFields #filterBarMacro: [
    Vendor,
    Quantity,
    CriticalityIndicator,
  ],
  UI.LineItem #tableMacro           : {
    ![@UI.Criticality]: CriticalityIndicator,
    $value            : [
      {Value: Vendor},
      {Value: Quantity},
      {Value: createdAt},
      {Value: modifiedAt},
      {Value: modifiedBy},
    ]
  }
);

annotate service.Jobs with {
  Job    @Common.Label: 'Job';
  Status @Common.Label: 'Status';
  Title  @Common.Label: 'Title';
};

annotate service.OpenItems with {
  Vendor               @Common.Label: 'Vendor';
  Quantity             @Common.Label: 'Quantity';
  CriticalityIndicator @Common.Label: 'CriticalityIndicator';
};
