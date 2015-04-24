.class Lcom/android/settings/myplace/MyPlaceProfileSettings$14;
.super Ljava/lang/Object;
.source "MyPlaceProfileSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/myplace/MyPlaceProfileSettings;->showHelpStep2Dialog()V
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
    .line 1525
    iput-object p1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$14;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    .line 1530
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$14;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    iget-object v2, v2, Lcom/android/settings/myplace/MyPlaceProfileSettings;->alert:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v5, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1531
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$14;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings;->mIsFromHelp:Z
    invoke-static {v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$2600(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1532
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$14;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-virtual {v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "myplacehelp"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1533
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1534
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "value"

    const/4 v3, 0x2

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1535
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1536
    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings;->OPTION_SELECTED:Z
    invoke-static {v5}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$2702(Z)Z

    .line 1538
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "pref":Landroid/content/SharedPreferences;
    :cond_0
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$14;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;
    invoke-static {v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$2900(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    .line 1539
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$14;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    const/4 v3, 0x0

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;
    invoke-static {v2, v3}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$2902(Lcom/android/settings/myplace/MyPlaceProfileSettings;Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;)Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 1540
    return-void
.end method
