.class Lcom/android/launcher2/guide/FragmentGuiderBase;
.super Lcom/android/launcher2/guide/GuiderBase;
.source "FragmentGuiderBase.java"

# interfaces
.implements Lcom/android/launcher2/guide/GuiderLifecycleListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/guide/FragmentGuiderBase$GuideStates;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/launcher2/guide/GuiderBase;-><init>(Landroid/app/Activity;)V

    .line 57
    instance-of v0, p1, Lcom/android/launcher2/Launcher;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expecting Launcher Activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    return-void
.end method


# virtual methods
.method public dismissHelpDialog()V
    .locals 0

    .prologue
    .line 114
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 126
    invoke-super {p0}, Lcom/android/launcher2/guide/GuiderBase;->finish()V

    .line 128
    invoke-virtual {p0}, Lcom/android/launcher2/guide/FragmentGuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v0

    .line 130
    .local v0, "homeView":Lcom/android/launcher2/HomeView;
    if-nez v0, :cond_0

    .line 139
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 119
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "args"    # Landroid/view/View;

    .prologue
    .line 210
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/android/launcher2/guide/FragmentGuiderBase;->showHelpDialog()V

    .line 109
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 65
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/android/launcher2/guide/FragmentGuiderBase;->finish()V

    .line 73
    invoke-virtual {p0}, Lcom/android/launcher2/guide/FragmentGuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    .line 75
    .local v0, "activity":Lcom/android/launcher2/Launcher;
    if-nez v0, :cond_0

    .line 84
    :cond_0
    return-void
.end method

.method public onKey(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v4, 0x6f

    .line 160
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 161
    .local v0, "action":I
    const/4 v2, 0x0

    .line 163
    .local v2, "retval":Z
    const/16 v3, 0x42

    if-eq p1, v3, :cond_0

    const/16 v3, 0x17

    if-eq p1, v3, :cond_0

    if-ne p1, v4, :cond_3

    :cond_0
    if-eqz v0, :cond_1

    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    .line 169
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/guide/FragmentGuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 171
    .local v1, "focus":Landroid/view/View;
    if-nez v0, :cond_4

    .line 172
    if-eqz v1, :cond_2

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 182
    :cond_2
    :goto_0
    const/4 v2, 0x1

    .line 185
    .end local v1    # "focus":Landroid/view/View;
    :cond_3
    return v2

    .line 174
    .restart local v1    # "focus":Landroid/view/View;
    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 176
    :cond_5
    if-ne p1, v4, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/guide/FragmentGuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 178
    invoke-virtual {p0}, Lcom/android/launcher2/guide/FragmentGuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 0
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 204
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/android/launcher2/guide/FragmentGuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v0

    .line 146
    .local v0, "homeView":Lcom/android/launcher2/HomeView;
    if-nez v0, :cond_0

    .line 149
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 198
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/android/launcher2/guide/FragmentGuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v0

    .line 90
    .local v0, "homeView":Lcom/android/launcher2/HomeView;
    if-nez v0, :cond_0

    .line 104
    :cond_0
    return-void
.end method

.method public onSwitcherChanged(Landroid/widget/CompoundButton;Z)Z
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 192
    const/4 v0, 0x0

    return v0
.end method

.method public showHelpDialog()V
    .locals 0

    .prologue
    .line 155
    return-void
.end method
