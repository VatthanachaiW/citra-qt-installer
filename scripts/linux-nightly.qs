function Component() {
    if (systemInfo.kernelType === "linux") {
        component.setValue("Virtual", "false");
        component.setValue("Default", "true");
    } else {
        component.setValue("Virtual", "true");
        component.setValue("Enabled", "false");
    }
}

Component.prototype.createOperations = function()
{
    component.createOperations();

    component.addOperation("CreateDesktopEntry", "citra.desktop",
    "Version=1.0\n" +
    "Type=Application\n" +
    "Name=Citra\n" +
    "GenericName=3DS Emulator\n" +
    "GenericName[fr]=Émulateur 3DS\n" +
    "Comment=Nintendo 3DS video game console emulator\n" +
    "Comment[fr]=Émulateur de console de jeu Nintendo 3DS\n" +
    "Icon=citra\n" +
    "TryExec=@TargetDir@/nightly/citra-qt\n" +
    "Exec=@TargetDir@/nightly/citra-qt %f\n" +
    "Categories=Game;Emulator;Qt;\n" +
    "MimeType=application/x-ctr-3dsx;application/x-ctr-cci;application/x-ctr-cia;application/x-ctr-cxi;\n" +
    "Keywords=3DS;Nintendo;\n");
	
	component.addOperation("InstallIcons", "@TargetDir@/nightly/dist");
}
