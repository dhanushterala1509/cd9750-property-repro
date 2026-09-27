/**
 * CD-9750 P01: violation inside a multi-line property getter.
 */
public with sharing class P01MultilineGetter {
    public String bannerHtml {
        get {
            String msg = ApexPages.currentPage().getParameters().get('msg');
            return '<div>' + msg + '</div>';
        }
        set;
    }
}
