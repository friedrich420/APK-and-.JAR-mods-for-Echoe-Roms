.class public Lcom/android/settings/Settings$SimChangeAlertSettingsActivity;
.super Lcom/android/settings/Settings;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimChangeAlertSettingsActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 410
    invoke-direct {p0}, Lcom/android/settings/Settings;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 413
    invoke-super {p0, p1}, Lcom/android/settings/Settings;->onCreate(Landroid/os/Bundle;)V

    .line 414
    invoke-virtual {p0}, Lcom/android/settings/Settings$SimChangeAlertSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0f59

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->replaceSIMString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/Settings$SimChangeAlertSettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 415
    invoke-virtual {p0}, Lcom/android/settings/Settings$SimChangeAlertSettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 416
    invoke-virtual {p0}, Lcom/android/settings/Settings$SimChangeAlertSettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 417
    invoke-virtual {p0}, Lcom/android/settings/Settings$SimChangeAlertSettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 419
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 423
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 428
    invoke-super {p0, p1}, Lcom/android/settings/Settings;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 425
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/Settings$SimChangeAlertSettingsActivity;->finish()V

    .line 426
    const/4 v0, 0x1

    goto :goto_0

    .line 423
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
