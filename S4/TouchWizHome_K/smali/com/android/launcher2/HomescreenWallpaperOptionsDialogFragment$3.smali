.class Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment$3;
.super Ljava/lang/Object;
.source "HomescreenWallpaperOptionsDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;

.field final synthetic val$c:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment$3;->this$0:Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;

    iput-object p2, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment$3;->val$c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const v6, 0x7f100002

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 173
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 174
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.android.wallpaper.livepicker/com.android.wallpaper.livepicker.LiveWallpaperActivity"

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 175
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 178
    sget v2, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->currentMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    sget v2, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->currentMode:I

    if-ne v2, v5, :cond_1

    .line 179
    :cond_0
    const-string v2, "SET_LOCKSCREEN_WALLPAPER"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 181
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment$3;->this$0:Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;

    invoke-virtual {v2, v1}, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 190
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment$3;->this$0:Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;

    invoke-virtual {v2}, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->dismiss()V

    .line 191
    return-void

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    iget-object v2, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment$3;->val$c:Landroid/content/Context;

    invoke-static {v2, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 185
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/SecurityException;
    iget-object v2, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment$3;->val$c:Landroid/content/Context;

    invoke-static {v2, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 187
    const-string v2, "HomescreenWallpaperOptionsDialogFragment"

    const-string v3, "Launcher does not have the permission to launch com.android.wallpaper.livepicker/com.android.wallpaper.livepicker.LiveWallpaperActivity"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
