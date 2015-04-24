.class final Lcom/android/settings/notification/ZenModeDNDSettings$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "ZenModeDNDSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/ZenModeDNDSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

.field private final ZEN_MODE_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/settings/notification/ZenModeDNDSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/ZenModeDNDSettings;)V
    .locals 1

    .prologue
    .line 822
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeDNDSettings$SettingsObserver;->this$0:Lcom/android/settings/notification/ZenModeDNDSettings;

    .line 823
    # getter for: Lcom/android/settings/notification/ZenModeDNDSettings;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/android/settings/notification/ZenModeDNDSettings;->access$1100(Lcom/android/settings/notification/ZenModeDNDSettings;)Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 819
    const-string v0, "zen_mode"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings$SettingsObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    .line 820
    const-string v0, "zen_mode_config_etag"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings$SettingsObserver;->ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

    .line 824
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 837
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 838
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings$SettingsObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 839
    # getter for: Lcom/android/settings/notification/ZenModeDNDSettings;->PREF_ZEN_MODE:Lcom/android/settings/notification/ZenModeDNDSettings$SettingPrefWithCallback;
    invoke-static {}, Lcom/android/settings/notification/ZenModeDNDSettings;->access$1500()Lcom/android/settings/notification/ZenModeDNDSettings$SettingPrefWithCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDSettings$SettingsObserver;->this$0:Lcom/android/settings/notification/ZenModeDNDSettings;

    # getter for: Lcom/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/notification/ZenModeDNDSettings;->access$700(Lcom/android/settings/notification/ZenModeDNDSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/ZenModeDNDSettings$SettingPrefWithCallback;->update(Landroid/content/Context;)V

    .line 840
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings$SettingsObserver;->this$0:Lcom/android/settings/notification/ZenModeDNDSettings;

    # invokes: Lcom/android/settings/notification/ZenModeDNDSettings;->updateControls()V
    invoke-static {v0}, Lcom/android/settings/notification/ZenModeDNDSettings;->access$000(Lcom/android/settings/notification/ZenModeDNDSettings;)V

    .line 842
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings$SettingsObserver;->ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 843
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings$SettingsObserver;->this$0:Lcom/android/settings/notification/ZenModeDNDSettings;

    # invokes: Lcom/android/settings/notification/ZenModeDNDSettings;->updateZenModeConfig()V
    invoke-static {v0}, Lcom/android/settings/notification/ZenModeDNDSettings;->access$1600(Lcom/android/settings/notification/ZenModeDNDSettings;)V

    .line 845
    :cond_1
    return-void
.end method

.method public register()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 827
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings$SettingsObserver;->this$0:Lcom/android/settings/notification/ZenModeDNDSettings;

    # invokes: Lcom/android/settings/notification/ZenModeDNDSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/notification/ZenModeDNDSettings;->access$1200(Lcom/android/settings/notification/ZenModeDNDSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDSettings$SettingsObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 828
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings$SettingsObserver;->this$0:Lcom/android/settings/notification/ZenModeDNDSettings;

    # invokes: Lcom/android/settings/notification/ZenModeDNDSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/notification/ZenModeDNDSettings;->access$1300(Lcom/android/settings/notification/ZenModeDNDSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDSettings$SettingsObserver;->ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 829
    return-void
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 832
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings$SettingsObserver;->this$0:Lcom/android/settings/notification/ZenModeDNDSettings;

    # invokes: Lcom/android/settings/notification/ZenModeDNDSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/notification/ZenModeDNDSettings;->access$1400(Lcom/android/settings/notification/ZenModeDNDSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 833
    return-void
.end method
