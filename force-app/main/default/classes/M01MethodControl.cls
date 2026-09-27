/**
 * CONTROL: ordinary method shape. This already works today - it is here to show
 * the contrast against the property cases in the same scan.
 */
public with sharing class M01MethodControl {
    public String renderBanner() {
        String msg = ApexPages.currentPage().getParameters().get('msg');
        return '<div>' + msg + '</div>';
    }
}
