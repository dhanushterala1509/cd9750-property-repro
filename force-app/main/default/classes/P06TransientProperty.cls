/**
 * CD-9750 P06: transient property.
 */
public with sharing class P06TransientProperty {
    public transient String sessionHtml {
        get {
            String raw = ApexPages.currentPage().getParameters().get('raw');
            return '<em>' + raw + '</em>';
        }
        set;
    }
}
