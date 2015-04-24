.class Lcom/android/settings/myplace/MyPlaceProfileSettings$7;
.super Ljava/lang/Object;
.source "MyPlaceProfileSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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
    .line 1123
    iput-object p1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$7;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keycode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 1126
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 1127
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$7;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings;->mIsFromHelp:Z
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$2600(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1128
    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings;->OPTION_SELECTED:Z
    invoke-static {v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$2702(Z)Z

    .line 1129
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$7;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    # invokes: Lcom/android/settings/myplace/MyPlaceProfileSettings;->showHelpStep1Dialog()V
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$2800(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V

    .line 1132
    :cond_0
    return v1
.end method
