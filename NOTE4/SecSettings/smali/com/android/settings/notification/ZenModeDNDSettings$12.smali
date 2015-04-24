.class Lcom/android/settings/notification/ZenModeDNDSettings$12;
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
    .line 427
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeDNDSettings$12;->this$0:Lcom/android/settings/notification/ZenModeDNDSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    .line 430
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDSettings$12;->this$0:Lcom/android/settings/notification/ZenModeDNDSettings;

    # getter for: Lcom/android/settings/notification/ZenModeDNDSettings;->mDisableListeners:Z
    invoke-static {v1}, Lcom/android/settings/notification/ZenModeDNDSettings;->access$100(Lcom/android/settings/notification/ZenModeDNDSettings;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 435
    .end local p2    # "newValue":Ljava/lang/Object;
    :goto_0
    return v2

    .line 431
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 432
    .local v0, "val":Z
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDSettings$12;->this$0:Lcom/android/settings/notification/ZenModeDNDSettings;

    # invokes: Lcom/android/settings/notification/ZenModeDNDSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/settings/notification/ZenModeDNDSettings;->access$900(Lcom/android/settings/notification/ZenModeDNDSettings;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dnd_allowexception"

    if-eqz v0, :cond_1

    move v1, v2

    :goto_1
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 433
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDSettings$12;->this$0:Lcom/android/settings/notification/ZenModeDNDSettings;

    # invokes: Lcom/android/settings/notification/ZenModeDNDSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    invoke-static {v1}, Lcom/android/settings/notification/ZenModeDNDSettings;->access$600(Lcom/android/settings/notification/ZenModeDNDSettings;)Landroid/preference/PreferenceScreen;

    .line 434
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDSettings$12;->this$0:Lcom/android/settings/notification/ZenModeDNDSettings;

    invoke-virtual {v1}, Lcom/android/settings/notification/ZenModeDNDSettings;->updateZenMode()V

    goto :goto_0

    .line 432
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
