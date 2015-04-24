.class public Lcom/android/settings/KnoxChooseLockTwoFactor;
.super Lcom/android/settings/SettingsActivity;
.source "KnoxChooseLockTwoFactor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    .line 74
    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 5

    .prologue
    .line 43
    new-instance v1, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 44
    .local v1, "modIntent":Landroid/content/Intent;
    const-string v3, ":settings:show_fragment"

    const-class v4, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    invoke-static {}, Lcom/android/settings/Utils;->isFullScreenSupported()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/KnoxChooseLockTwoFactor;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 47
    .local v2, "window":Landroid/view/Window;
    if-eqz v2, :cond_0

    .line 48
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 49
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v3, v3, 0x400

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 50
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 51
    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 54
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v2    # "window":Landroid/view/Window;
    :cond_0
    return-object v1
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 70
    const-class v0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 71
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 59
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 65
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 61
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/KnoxChooseLockTwoFactor;->setResult(I)V

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/KnoxChooseLockTwoFactor;->finish()V

    .line 63
    const/4 v0, 0x1

    goto :goto_0

    .line 59
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
