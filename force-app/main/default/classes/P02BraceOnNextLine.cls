/**
 * CD-9750 P02: property whose opening brace is on the NEXT line.
 */
public with sharing class P02BraceOnNextLine {
    public String bannerHtml
    {
        get
        {
            String msg = ApexPages.currentPage().getParameters().get('msg');
            return '<span>' + msg + '</span>';
        }
        set;
    }
}
