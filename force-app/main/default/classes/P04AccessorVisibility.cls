/**
 * CD-9750 P04: accessor-specific visibility.
 */
public with sharing class P04AccessorVisibility {
    public String detailHtml {
        private get {
            String raw = ApexPages.currentPage().getParameters().get('raw');
            return '<p>' + raw + '</p>';
        }
        set;
    }
}
