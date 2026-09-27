/**
 * CD-9750 P03: annotated property, annotation on the preceding line.
 */
public with sharing class P03AuraEnabledProperty {
    @AuraEnabled
    public String cardHtml {
        get {
            String raw = ApexPages.currentPage().getParameters().get('raw');
            return '<article>' + raw + '</article>';
        }
        set;
    }
}
