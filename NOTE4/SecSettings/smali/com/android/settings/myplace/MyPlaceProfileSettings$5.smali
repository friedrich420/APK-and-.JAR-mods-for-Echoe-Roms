.class Lcom/android/settings/myplace/MyPlaceProfileSettings$5;
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
    .line 916
    iput-object p1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$5;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "selected"    # I

    .prologue
    const/4 v7, 0x0

    .line 919
    const-string v4, "MyPlaceSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onClick Select method dialog : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    if-nez p2, :cond_5

    .line 921
    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$5;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-virtual {v4}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->checkNetwork()Z

    move-result v4

    if-nez v4, :cond_1

    .line 922
    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$5;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-virtual {v4}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0a1980

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 951
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 952
    return-void

    .line 924
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 925
    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$5;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-virtual {v4}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "com.android.settings.myplace.MyPlaceProfileSettings"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 926
    .local v0, "ReverbSharedPrefs":Landroid/content/SharedPreferences;
    const/4 v1, 0x0

    .line 927
    .local v1, "doNotShowData":Z
    const/4 v2, 0x0

    .line 928
    .local v2, "doNotShowWlan":Z
    if-eqz v0, :cond_0

    .line 929
    const-string v4, "DoNotShowDialogData"

    invoke-interface {v0, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 930
    const-string v4, "DoNotShowDialogWlan"

    invoke-interface {v0, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 931
    const-string v4, "enable"

    invoke-interface {v0, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 932
    .local v3, "mCloudChargeEnable":Z
    const-string v4, "MyPlaceSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doNotShowData="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " doNotShowWlan="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mCloudChargeEnable="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    if-nez v1, :cond_2

    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$5;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-virtual {v4}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->isMobileDataConnected()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 934
    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$5;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    # invokes: Lcom/android/settings/myplace/MyPlaceProfileSettings;->showMobileDateChargeEnableDialog()V
    invoke-static {v4}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$2100(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V

    goto :goto_0

    .line 935
    :cond_2
    if-nez v2, :cond_3

    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$5;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-virtual {v4}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->isMobileDataConnected()Z

    move-result v4

    if-nez v4, :cond_3

    .line 936
    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$5;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    # invokes: Lcom/android/settings/myplace/MyPlaceProfileSettings;->showMobileDateChargeEnableDialog()V
    invoke-static {v4}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$2100(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V

    goto :goto_0

    .line 939
    :cond_3
    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$5;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    # invokes: Lcom/android/settings/myplace/MyPlaceProfileSettings;->requestGPSLocation()V
    invoke-static {v4}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$2200(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V

    goto :goto_0

    .line 943
    .end local v0    # "ReverbSharedPrefs":Landroid/content/SharedPreferences;
    .end local v1    # "doNotShowData":Z
    .end local v2    # "doNotShowWlan":Z
    .end local v3    # "mCloudChargeEnable":Z
    :cond_4
    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$5;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    # invokes: Lcom/android/settings/myplace/MyPlaceProfileSettings;->requestGPSLocation()V
    invoke-static {v4}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$2200(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V

    goto/16 :goto_0

    .line 947
    :cond_5
    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$5;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-virtual {v4}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->resetPlaceInfo()V

    .line 948
    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$5;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    # invokes: Lcom/android/settings/myplace/MyPlaceProfileSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    invoke-static {v4}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$2300(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Landroid/preference/PreferenceScreen;

    .line 949
    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$5;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    # invokes: Lcom/android/settings/myplace/MyPlaceProfileSettings;->updateProfile()V
    invoke-static {v4}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$2400(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V

    goto/16 :goto_0
.end method
