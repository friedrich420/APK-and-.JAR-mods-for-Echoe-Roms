.class public Lcom/android/settings/Settings$DataUsageSummaryActivity;
.super Lcom/android/settings/SettingsActivity;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataUsageSummaryActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 261
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 264
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 265
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/16 v4, 0x64

    if-lt v3, v4, :cond_2

    .line 266
    invoke-virtual {p0}, Lcom/android/settings/Settings$DataUsageSummaryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 267
    .local v2, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    .line 268
    .local v1, "initialTitle":Ljava/lang/String;
    const/4 v0, 0x0

    .line 269
    .local v0, "enableNavigationUp":Z
    if-eqz v2, :cond_0

    .line 270
    const-string v3, ":settings:show_fragment_title"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 271
    const-string v3, ":settings:show_navigation_up"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 273
    :cond_0
    if-eqz v1, :cond_1

    .line 274
    invoke-virtual {p0, v1}, Lcom/android/settings/Settings$DataUsageSummaryActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 275
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/Settings$DataUsageSummaryActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 276
    invoke-virtual {p0}, Lcom/android/settings/Settings$DataUsageSummaryActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 277
    invoke-virtual {p0}, Lcom/android/settings/Settings$DataUsageSummaryActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 280
    .end local v0    # "enableNavigationUp":Z
    .end local v1    # "initialTitle":Ljava/lang/String;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 284
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    .line 285
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 291
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 287
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/Settings$DataUsageSummaryActivity;->finish()V

    .line 288
    const/4 v0, 0x1

    goto :goto_0

    .line 285
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
