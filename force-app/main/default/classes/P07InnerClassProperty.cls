/**
 * CD-9750 P07: property on an inner wrapper class.
 */
public with sharing class P07InnerClassProperty {
    public String outerWork() {
        return 'outer';
    }

    public class RowWrapper {
        public String cellHtml {
            get {
                String raw = ApexPages.currentPage().getParameters().get('raw');
                return '<td>' + raw + '</td>';
            }
            set;
        }
    }
}
