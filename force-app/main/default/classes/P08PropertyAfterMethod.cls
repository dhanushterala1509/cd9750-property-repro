/**
 * CD-9750 P08: property immediately after a method - the backward scan must
 * anchor the property, not the preceding method.
 */
public with sharing class P08PropertyAfterMethod {
    public String unrelated() {
        return 'unrelated';
    }

    public String headerHtml {
        get {
            String raw = ApexPages.currentPage().getParameters().get('raw');
            return '<h2>' + raw + '</h2>';
        }
        set;
    }
}
