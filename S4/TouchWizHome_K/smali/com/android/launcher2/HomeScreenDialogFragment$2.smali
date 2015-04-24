.class Lcom/android/launcher2/HomeScreenDialogFragment$2;
.super Ljava/lang/Object;
.source "HomeScreenDialogFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/HomeScreenDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/HomeScreenDialogFragment;

.field final synthetic val$c:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/launcher2/HomeScreenDialogFragment;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/launcher2/HomeScreenDialogFragment$2;->this$0:Lcom/android/launcher2/HomeScreenDialogFragment;

    iput-object p2, p0, Lcom/android/launcher2/HomeScreenDialogFragment$2;->val$c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 190
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v4, p0, Lcom/android/launcher2/HomeScreenDialogFragment$2;->this$0:Lcom/android/launcher2/HomeScreenDialogFragment;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeScreenDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    .line 192
    .local v3, "launcher":Lcom/android/launcher2/Launcher;
    const-string v4, ""

    const-string v5, "Wallpaper"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 193
    add-int/lit8 p3, p3, -0x1

    .line 194
    :cond_0
    sget-boolean v4, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v4, :cond_1

    if-nez p3, :cond_2

    .line 196
    :cond_1
    iget-object v4, p0, Lcom/android/launcher2/HomeScreenDialogFragment$2;->this$0:Lcom/android/launcher2/HomeScreenDialogFragment;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeScreenDialogFragment;->dismiss()V

    .line 197
    :cond_2
    iget-object v4, p0, Lcom/android/launcher2/HomeScreenDialogFragment$2;->this$0:Lcom/android/launcher2/HomeScreenDialogFragment;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeScreenDialogFragment;->isAdded()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 198
    packed-switch p3, :pswitch_data_0

    .line 266
    :cond_3
    :goto_0
    return-void

    .line 200
    :pswitch_0
    sget-boolean v4, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v4, :cond_3

    .line 203
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    const-string v5, "http://waprd.telstra.com/redirect?target=3glatestpics"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 205
    .local v0, "chooserDownloadWallpaper":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/launcher2/HomeScreenDialogFragment$2;->this$0:Lcom/android/launcher2/HomeScreenDialogFragment;

    invoke-virtual {v4, v0}, Lcom/android/launcher2/HomeScreenDialogFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 208
    .end local v0    # "chooserDownloadWallpaper":Landroid/content/Intent;
    :pswitch_1
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/launcher2/HomeScreenDialogFragment;->homescreenSelected:Z

    .line 210
    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-static {v4, p3}, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->createAndShow(Landroid/app/FragmentManager;I)V

    goto :goto_0

    .line 216
    :pswitch_2
    sget-boolean v4, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v4, :cond_3

    .line 220
    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-static {v4, p3}, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->createAndShow(Landroid/app/FragmentManager;I)V

    goto :goto_0

    .line 225
    :pswitch_3
    sget-boolean v4, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v4, :cond_3

    .line 232
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 233
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "com.android.settings"

    const-string v5, "com.android.settings.SViewColor"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    :try_start_0
    iget-object v4, p0, Lcom/android/launcher2/HomeScreenDialogFragment$2;->this$0:Lcom/android/launcher2/HomeScreenDialogFragment;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeScreenDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    invoke-virtual {v4, v2}, Lcom/android/launcher2/Launcher;->startActivitySafely(Landroid/content/Intent;)Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 237
    :catch_0
    move-exception v1

    .line 238
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v4, "HomeScreenDialogFragment"

    const-string v5, "Activity Not Found for S View cover option"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 198
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
