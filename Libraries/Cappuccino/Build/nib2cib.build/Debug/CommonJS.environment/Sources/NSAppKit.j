@STATIC;1.0;i;15;_NSCornerView.ji;19;NSArrayController.ji;7;NSBox.ji;10;NSButton.ji;8;NSCell.ji;16;NSClassSwapper.ji;12;NSClipView.ji;9;NSColor.ji;13;NSColorWell.ji;18;NSCollectionView.ji;22;NSCollectionViewItem.ji;11;NSControl.ji;16;NSCustomObject.ji;18;NSCustomResource.ji;14;NSCustomView.ji;9;NSEvent.ji;8;NSFont.ji;13;NSFormatter.ji;16;NSIBObjectData.ji;13;NSImageView.ji;10;NSMatrix.ji;8;NSMenu.ji;12;NSMenuItem.ji;16;NSNibConnector.ji;20;NSObjectController.ji;15;NSOutlineView.ji;15;NSPopUpButton.ji;13;NSResponder.ji;14;NSScrollView.ji;12;NSScroller.ji;15;NSSearchField.ji;7;NSSet.ji;19;NSSecureTextField.ji;20;NSSegmentedControl.ji;10;NSSlider.ji;13;NSSplitView.ji;15;NSTableColumn.ji;19;NSTableHeaderView.ji;13;NSTableView.ji;11;NSTabView.ji;15;NSTabViewItem.ji;13;NSTextField.ji;11;NSToolbar.ji;28;NSToolbarFlexibleSpaceItem.ji;15;NSToolbarItem.ji;25;NSToolbarShowColorsItem.ji;24;NSToolbarSeparatorItem.ji;20;NSToolbarSpaceItem.ji;8;NSView.ji;18;NSViewController.ji;18;NSWindowTemplate.ji;9;WebView.ji;18;NSSortDescriptor.jt;2567;objj_executeFile("_NSCornerView.j", YES);
objj_executeFile("NSArrayController.j", YES);
objj_executeFile("NSBox.j", YES);
objj_executeFile("NSButton.j", YES);
objj_executeFile("NSCell.j", YES);
objj_executeFile("NSClassSwapper.j", YES);
objj_executeFile("NSClipView.j", YES);
objj_executeFile("NSColor.j", YES);
objj_executeFile("NSColorWell.j", YES);
objj_executeFile("NSCollectionView.j", YES);
objj_executeFile("NSCollectionViewItem.j", YES);
objj_executeFile("NSControl.j", YES);
objj_executeFile("NSCustomObject.j", YES);
objj_executeFile("NSCustomResource.j", YES);
objj_executeFile("NSCustomView.j", YES);
objj_executeFile("NSEvent.j", YES);
objj_executeFile("NSFont.j", YES);
objj_executeFile("NSFormatter.j", YES);
objj_executeFile("NSIBObjectData.j", YES);
objj_executeFile("NSImageView.j", YES);
objj_executeFile("NSMatrix.j", YES);
objj_executeFile("NSMenu.j", YES);
objj_executeFile("NSMenuItem.j", YES);
objj_executeFile("NSNibConnector.j", YES);
objj_executeFile("NSObjectController.j", YES);
objj_executeFile("NSOutlineView.j", YES);
objj_executeFile("NSPopUpButton.j", YES);
objj_executeFile("NSResponder.j", YES);
objj_executeFile("NSScrollView.j", YES);
objj_executeFile("NSScroller.j", YES);
objj_executeFile("NSSearchField.j", YES);
objj_executeFile("NSSet.j", YES);
objj_executeFile("NSSecureTextField.j", YES);
objj_executeFile("NSSegmentedControl.j", YES);
objj_executeFile("NSSlider.j", YES);
objj_executeFile("NSSplitView.j", YES);
objj_executeFile("NSTableColumn.j", YES);
objj_executeFile("NSTableHeaderView.j", YES);
objj_executeFile("NSTableView.j", YES);
objj_executeFile("NSTabView.j", YES);
objj_executeFile("NSTabViewItem.j", YES);
objj_executeFile("NSTextField.j", YES);
objj_executeFile("NSToolbar.j", YES);
objj_executeFile("NSToolbarFlexibleSpaceItem.j", YES);
objj_executeFile("NSToolbarItem.j", YES);
objj_executeFile("NSToolbarShowColorsItem.j", YES);
objj_executeFile("NSToolbarSeparatorItem.j", YES);
objj_executeFile("NSToolbarSpaceItem.j", YES);
objj_executeFile("NSView.j", YES);
objj_executeFile("NSViewController.j", YES);
objj_executeFile("NSWindowTemplate.j", YES);
objj_executeFile("WebView.j", YES);
objj_executeFile("NSSortDescriptor.j", YES);
CP_NSMapClassName= function(aClassName)
{
    if (aClassName.indexOf("NS") === 0)
    {
        var mappedClassName = "CP" + aClassName.substr(2);
        if (CPClassFromString(mappedClassName))
        {
            CPLog.debug("NSAppKit: mapping " + aClassName + " to " + mappedClassName);
            return mappedClassName;
        }
    }
    return aClassName;
}

