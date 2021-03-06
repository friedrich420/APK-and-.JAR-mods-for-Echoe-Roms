.class public Lcom/android/settings/Settings$InputMethodAndLanguageSettingsActivity;
.super Lcom/android/settings/SettingsActivity;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputMethodAndLanguageSettingsActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 76
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/16 v4, 0x64

    if-lt v3, v4, :cond_2

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/Settings$InputMethodAndLanguageSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 79
    .local v2, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    .line 80
    .local v1, "initialTitle":Ljava/lang/String;
    const/4 v0, 0x0

    .line 81
    .local v0, "enableNavigationUp":Z
    if-eqz v2, :cond_0

    .line 82
    const-string v3, ":settings:show_fragment_title"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 83
    const-string v3, ":settings:show_navigation_up"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 85
    :cond_0
    if-eqz v1, :cond_1

    .line 86
    invoke-virtual {p0, v1}, Lcom/android/settings/Settings$InputMethodAndLanguageSettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 87
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/Settings$InputMethodAndLanguageSettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/Settings$InputMethodAndLanguageSettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/Settings$InputMethodAndLanguageSettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 92
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
    .line 96
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    .line 97
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 103
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 99
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/Settings$InputMethodAndLanguageSettingsActivity;->finish()V

    .line 100
    const/4 v0, 0x1

    goto :goto_0

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
