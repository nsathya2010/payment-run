using PaymentRunService as service from '../../srv/service';
annotate service.Jobs with @(
    UI.SelectionFields #filterBarMacro : [
        Job,
        Status,
        Title,
    ],
    UI.LineItem #tableMacro : [
        {
            $Type : 'UI.DataField',
            Value : Job,
        },
        {
            $Type : 'UI.DataField',
            Value : createdAt,
        },
        {
            $Type : 'UI.DataField',
            Value : modifiedAt,
        },
        {
            $Type : 'UI.DataField',
            Value : Title,
        },
        {
            $Type : 'UI.DataField',
            Value : _StatusText.Text,
            Label : 'Status',
        },
    ],
    UI.SelectionFields #filterBarMacro1 : [
        Job,
        Status,
        Title,
    ],
);

annotate service.Jobs with {
    Job @Common.Label : 'Job'
};

annotate service.Jobs with {
    Status @Common.Label : 'Status'
};

annotate service.Jobs with {
    Title @Common.Label : 'Title'
};

