function Component() {
    if (systemInfo.kernelType === "winnt") {
        component.setValue("Virtual", "false");
        component.setValue("Default", "false"); // bleeding
    } else {
        component.setValue("Virtual", "true");
        component.setValue("Enabled", "false");
    }
}

Component.prototype.createOperations = function()
{
    component.createOperations();

    component.addOperation("CreateShortcut", "@TargetDir@/canary-mingw/citra-qt.exe", "@StartMenuDir@/Citra Canary.lnk",
        "workingDirectory=@TargetDir@/canary-mingw");
}
