.class public Lcom/android/settings/wifi/WifiPickerDialog;
.super Landroid/app/Activity;
.source "WifiPickerDialog.java"


# instance fields
.field private mLastOrientation:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private alertDialogInit()V
    .locals 6

    .prologue
    .line 85
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 86
    .local v1, "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0a03c9

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPickerDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 90
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f04029a

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPickerDialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v3, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 91
    .local v2, "dialoglayout":Landroid/view/View;
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 94
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 96
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    new-instance v4, Lcom/android/settings/wifi/WifiPickerDialog$1;

    invoke-direct {v4, p0, v0}, Lcom/android/settings/wifi/WifiPickerDialog$1;-><init>(Lcom/android/settings/wifi/WifiPickerDialog;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 103
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 104
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 186
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 188
    iget v0, p0, Lcom/android/settings/wifi/WifiPickerDialog;->mLastOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 200
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/settings/wifi/WifiPickerDialog;->mLastOrientation:I

    .line 202
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 71
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiPickerDialog;->alertDialogInit()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 82
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WifiPickerDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception occured from wifi_picker_dialog.xml, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPickerDialog;->finish()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 152
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 154
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 162
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 170
    const-string v2, "statusbar"

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiPickerDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    .line 172
    .local v1, "mStatusBar":Landroid/app/StatusBarManager;
    if-eqz v1, :cond_0

    .line 174
    invoke-virtual {v1}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 176
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.kidsplat.quickpanel.PANEL_CLOSE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 177
    .local v0, "intent":Landroid/content/Intent;
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/wifi/WifiPickerDialog;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 178
    return-void
.end method
