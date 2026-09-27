/**
 * CONTROL: method with a multi-line signature.
 */
public with sharing class M02MethodMultiline {
    public String buildRow(
        String recordName,
        Integer rowIndex
    ) {
        String raw = ApexPages.currentPage().getParameters().get('raw');
        return '<tr><td>' + raw + '</td></tr>';
    }
}
