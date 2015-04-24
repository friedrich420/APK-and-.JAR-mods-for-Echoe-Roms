.class Lcom/android/settings/myplace/MyPlaceProfileSettings$6;
.super Ljava/lang/Object;
.source "MyPlaceProfileSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/myplace/MyPlaceProfileSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V
    .locals 0

    .prologue
    .line 1003
    iput-object p1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$6;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 11
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "selected"    # I

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1006
    const-string v5, "MyPlaceSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onClick Select method dialog : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    if-nez p2, :cond_5

    .line 1008
    iget-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$6;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-virtual {v5}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->checkNetwork()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1009
    iget-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$6;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-virtual {v5}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0a1980

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 1055
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1056
    return-void

    .line 1011
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1012
    iget-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$6;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-virtual {v5}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "com.android.settings.myplace.MyPlaceProfileSettings"

    invoke-virtual {v5, v6, v9}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1013
    .local v0, "ReverbSharedPrefs":Landroid/content/SharedPreferences;
    const/4 v1, 0x0

    .line 1014
    .local v1, "doNotShowData":Z
    const/4 v2, 0x0

    .line 1015
    .local v2, "doNotShowWlan":Z
    if-eqz v0, :cond_0

    .line 1016
    const-string v5, "DoNotShowDialogData"

    invoke-interface {v0, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1017
    const-string v5, "DoNotShowDialogWlan"

    invoke-interface {v0, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 1018
    const-string v5, "enable"

    invoke-interface {v0, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 1019
    .local v4, "mCloudChargeEnable":Z
    const-string v5, "MyPlaceSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doNotShowData="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " doNotShowWlan="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mCloudChargeEnable="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    if-nez v1, :cond_2

    iget-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$6;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-virtual {v5}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->isMobileDataConnected()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1021
    iget-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$6;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    # invokes: Lcom/android/settings/myplace/MyPlaceProfileSettings;->showMobileDateChargeEnableDialog()V
    invoke-static {v5}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$2100(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V

    goto :goto_0

    .line 1022
    :cond_2
    if-nez v2, :cond_3

    iget-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$6;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-virtual {v5}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->isMobileDataConnected()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1023
    iget-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$6;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    # invokes: Lcom/android/settings/myplace/MyPlaceProfileSettings;->showMobileDateChargeEnableDialog()V
    invoke-static {v5}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$2100(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V

    goto :goto_0

    .line 1026
    :cond_3
    iget-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$6;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    # invokes: Lcom/android/settings/myplace/MyPlaceProfileSettings;->requestGPSLocation()V
    invoke-static {v5}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$2200(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V

    goto :goto_0

    .line 1030
    .end local v0    # "ReverbSharedPrefs":Landroid/content/SharedPreferences;
    .end local v1    # "doNotShowData":Z
    .end local v2    # "doNotShowWlan":Z
    .end local v4    # "mCloudChargeEnable":Z
    :cond_4
    iget-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$6;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    # invokes: Lcom/android/settings/myplace/MyPlaceProfileSettings;->requestGPSLocation()V
    invoke-static {v5}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$2200(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V

    goto/16 :goto_0

    .line 1033
    :cond_5
    if-ne p2, v9, :cond_7

    .line 1034
    const-string v5, "MyPlaceSettings"

    const-string v6, "wifi is clicked. start wifi network picker"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.net.wifi.PICK_WIFI_NETWORK_RESULT"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1036
    .local v3, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMyPlaceV2()Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "extra_location_services"

    const-string v6, "location"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1037
    :cond_6
    iget-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$6;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-virtual {v5, v3, v9}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1038
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_7
    if-ne p2, v10, :cond_9

    .line 1039
    const-string v5, "MyPlaceSettings"

    const-string v6, "bt is clicked. start bt device picker"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.android.settings.bluetooth.CheckBluetoothLEStateActivity"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1041
    .restart local v3    # "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$6;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings;->isKnoxUser:Z
    invoke-static {v5}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$2500(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 1043
    iget-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$6;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-virtual {v5, v3, v10}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1048
    :cond_8
    iget-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$6;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-virtual {v5}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$6;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    const v7, 0x7f0a13ae

    invoke-virtual {v6, v7}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1051
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_9
    iget-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$6;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-virtual {v5}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->resetPlaceInfo()V

    .line 1052
    iget-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$6;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    # invokes: Lcom/android/settings/myplace/MyPlaceProfileSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    invoke-static {v5}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$2300(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Landroid/preference/PreferenceScreen;

    .line 1053
    iget-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$6;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    # invokes: Lcom/android/settings/myplace/MyPlaceProfileSettings;->updateProfile()V
    invoke-static {v5}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$2400(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V

    goto/16 :goto_0
.end method
