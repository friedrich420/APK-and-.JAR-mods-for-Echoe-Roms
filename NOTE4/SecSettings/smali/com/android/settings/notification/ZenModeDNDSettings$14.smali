.class Lcom/android/settings/notification/ZenModeDNDSettings$14;
.super Ljava/lang/Object;
.source "ZenModeDNDSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenModeDNDSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenModeDNDSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModeDNDSettings;)V
    .locals 0

    .prologue
    .line 454
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeDNDSettings$14;->this$0:Lcom/android/settings/notification/ZenModeDNDSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    .line 457
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeDNDSettings$14;->this$0:Lcom/android/settings/notification/ZenModeDNDSettings;

    # getter for: Lcom/android/settings/notification/ZenModeDNDSettings;->mDisableListeners:Z
    invoke-static {v2}, Lcom/android/settings/notification/ZenModeDNDSettings;->access$100(Lcom/android/settings/notification/ZenModeDNDSettings;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 468
    .end local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v5

    .line 458
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 459
    .local v1, "val":Z
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeDNDSettings$14;->this$0:Lcom/android/settings/notification/ZenModeDNDSettings;

    # getter for: Lcom/android/settings/notification/ZenModeDNDSettings;->mConfig:Landroid/service/notification/ZenModeConfig;
    invoke-static {v2}, Lcom/android/settings/notification/ZenModeDNDSettings;->access$200(Lcom/android/settings/notification/ZenModeDNDSettings;)Landroid/service/notification/ZenModeConfig;

    move-result-object v2

    iget-boolean v2, v2, Landroid/service/notification/ZenModeConfig;->applyDowntime:Z

    if-eq v1, v2, :cond_0

    .line 460
    const-string v2, "ZenModeSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrefChange applyDowntime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeDNDSettings$14;->this$0:Lcom/android/settings/notification/ZenModeDNDSettings;

    # getter for: Lcom/android/settings/notification/ZenModeDNDSettings;->mConfig:Landroid/service/notification/ZenModeConfig;
    invoke-static {v2}, Lcom/android/settings/notification/ZenModeDNDSettings;->access$200(Lcom/android/settings/notification/ZenModeDNDSettings;)Landroid/service/notification/ZenModeConfig;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 462
    .local v0, "newConfig":Landroid/service/notification/ZenModeConfig;
    iput-boolean v1, v0, Landroid/service/notification/ZenModeConfig;->applyDowntime:Z

    .line 463
    iget-object v2, v0, Landroid/service/notification/ZenModeConfig;->sleepMode:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 464
    const-string v2, "days:1,2,3,4,5,6,7"

    iput-object v2, v0, Landroid/service/notification/ZenModeConfig;->sleepMode:Ljava/lang/String;

    .line 465
    :cond_2
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeDNDSettings$14;->this$0:Lcom/android/settings/notification/ZenModeDNDSettings;

    # invokes: Lcom/android/settings/notification/ZenModeDNDSettings;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z
    invoke-static {v2, v0}, Lcom/android/settings/notification/ZenModeDNDSettings;->access$300(Lcom/android/settings/notification/ZenModeDNDSettings;Landroid/service/notification/ZenModeConfig;)Z

    .line 466
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeDNDSettings$14;->this$0:Lcom/android/settings/notification/ZenModeDNDSettings;

    # invokes: Lcom/android/settings/notification/ZenModeDNDSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    invoke-static {v2}, Lcom/android/settings/notification/ZenModeDNDSettings;->access$600(Lcom/android/settings/notification/ZenModeDNDSettings;)Landroid/preference/PreferenceScreen;

    .line 467
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeDNDSettings$14;->this$0:Lcom/android/settings/notification/ZenModeDNDSettings;

    iget-object v3, v0, Landroid/service/notification/ZenModeConfig;->sleepMode:Ljava/lang/String;

    # setter for: Lcom/android/settings/notification/ZenModeDNDSettings;->mRevertSleepMode:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/settings/notification/ZenModeDNDSettings;->access$402(Lcom/android/settings/notification/ZenModeDNDSettings;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
