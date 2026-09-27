/**
 * CD-9750 P05: static property.
 */
public with sharing class P05StaticProperty {
    public static String footerHtml {
        get {
            String raw = ApexPages.currentPage().getParameters().get('raw');
            return '<footer>' + raw + '</footer>';
        }
        set;
    }
}
