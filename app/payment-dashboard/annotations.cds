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
    UI.LineItem #tableMacro1 : [
        {
            $Type : 'UI.DataField',
            Value : Job,
        },
        {
            $Type : 'UI.DataField',
            Value : Title,
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
            Value : Status,
        },
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

annotate service.OpenItems with @(
    UI.SelectionFields #filterBarMacro : [
        Vendor,
        Quantity,
    ],
    UI.LineItem #tableMacro : [
        {
            $Type : 'UI.DataField',
            Value : Vendor,
        },
        {
            $Type : 'UI.DataField',
            Value : Quantity,
        },
        {
            $Type : 'UI.DataField',
            Value : modifiedBy,
        },
        {
            $Type : 'UI.DataField',
            Value : modifiedAt,
        },
        {
            $Type : 'UI.DataField',
            Value : createdAt,
        },
        {
            $Type : 'UI.DataField',
            Value : CriticalityIndicator,
            Label : 'CriticalityIndicator',
        },
        {
            $Type : 'UI.DataFieldForAction',
            Action : 'PaymentRunService.Reversal',
            Label : 'Reversal',
        },
        {
            $Type : 'UI.DataFieldForAction',
            Action : 'PaymentRunService.Clear',
            Label : 'Clear',
        },
        {
            $Type : 'UI.DataFieldForAction',
            Action : 'PaymentRunService.Change',
            Label : 'Change',
        },
    ],
);

annotate service.OpenItems with {
    Vendor @Common.Label : 'Vendor'
};

annotate service.OpenItems with {
    Quantity @Common.Label : 'Quantity'
};

