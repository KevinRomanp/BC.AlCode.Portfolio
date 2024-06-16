permissionset 50100 GeneratedPermission
{
    Assignable = true;
    Permissions = tabledata "Cobros-Pagos " = RIMD,
        tabledata "Lin. Cobros-Pagos " = RIMD,
        table "Cobros-Pagos " = X,
        table "Lin. Cobros-Pagos " = X,
        page CobrosPagosAPI = X,
        page CustomerAPI = X,
        page LinCobrosPagosAPI = X,
        page PurchaseInvoiceAPI = X,
        page PurchaseInvoiceSubformAPI = X,
        page SalesInvoiceAPI = X,
        page SalesInvoiceSubformAPI = X,
        page VendorAPI = X,
        query SaldosClientesAPI = X;
}