.class Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment$5;
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
    .line 212
    iput-object p1, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment$5;->this$0:Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;

    iput-object p2, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment$5;->val$c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const v4, 0x7f100002

    const/4 v3, 0x0

    .line 218
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment$5;->this$0:Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;

    const-string v2, "com.yahoo.mobile.client.android.liveweather/com.yahoo.mobile.client.android.liveweather.MainActivity"

    # invokes: Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->launchTargetApp(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->access$000(Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 226
    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment$5;->this$0:Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;

    invoke-virtual {v1}, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->dismiss()V

    .line 227
    return-void

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    iget-object v1, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment$5;->val$c:Landroid/content/Context;

    invoke-static {v1, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 221
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v0

    .line 222
    .local v0, "e":Ljava/lang/SecurityException;
    iget-object v1, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment$5;->val$c:Landroid/content/Context;

    invoke-static {v1, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 223
    const-string v1, "HomescreenWallpaperOptionsDialogFragment"

    const-string v2, "Launcher does not have the permission to launch com.yahoo.mobile.client.android.liveweather/com.yahoo.mobile.client.android.liveweather.MainActivity"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
