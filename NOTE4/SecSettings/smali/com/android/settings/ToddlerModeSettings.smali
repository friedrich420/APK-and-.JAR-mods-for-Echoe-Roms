.class public Lcom/android/settings/ToddlerModeSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ToddlerModeSettings.java"


# instance fields
.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mEnabler:Lcom/android/settings/ToddlerModeSwitchEnabler;

.field private final mJPNReceiver:Landroid/content/BroadcastReceiver;

.field private mToddlerModeObserver:Landroid/database/ContentObserver;

.field private toddlerModeInfo:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 60
    new-instance v0, Lcom/android/settings/ToddlerModeSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/ToddlerModeSettings$1;-><init>(Lcom/android/settings/ToddlerModeSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/ToddlerModeSettings;->mToddlerModeObserver:Landroid/database/ContentObserver;

    .line 68
    new-instance v0, Lcom/android/settings/ToddlerModeSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/ToddlerModeSettings$2;-><init>(Lcom/android/settings/ToddlerModeSettings;)V

    iput-object v0, p0, Lcom/android/settings/ToddlerModeSettings;->mJPNReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ToddlerModeSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/ToddlerModeSettings;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/settings/ToddlerModeSettings;->onToddlerModeChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/ToddlerModeSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/ToddlerModeSettings;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/settings/ToddlerModeSettings;->updateToddlerSwitch()V

    return-void
.end method

.method private isToddlerModeOn(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 157
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "toddler_mode_switch"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private onToddlerModeChanged()V
    .locals 3

    .prologue
    .line 150
    const-string v1, "ToddlerModeSettings"

    const-string v2, "onToddlerModeChanged()"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const/4 v0, 0x0

    .line 152
    .local v0, "toddlerModeEnabled":Z
    invoke-virtual {p0}, Lcom/android/settings/ToddlerModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/ToddlerModeSettings;->isToddlerModeOn(Landroid/content/Context;)Z

    move-result v0

    .line 153
    invoke-direct {p0, v0}, Lcom/android/settings/ToddlerModeSettings;->updatetoddlerModeInfo(Z)V

    .line 154
    return-void
.end method

.method private updateToddlerSwitch()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 177
    invoke-virtual {p0}, Lcom/android/settings/ToddlerModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    move v0, v1

    .line 179
    .local v0, "enabled":Z
    :goto_0
    iget-object v3, p0, Lcom/android/settings/ToddlerModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    if-nez v0, :cond_1

    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 180
    return-void

    .end local v0    # "enabled":Z
    :cond_0
    move v0, v2

    .line 177
    goto :goto_0

    .restart local v0    # "enabled":Z
    :cond_1
    move v1, v2

    .line 179
    goto :goto_1
.end method

.method private updatetoddlerModeInfo(Z)V
    .locals 5
    .param p1, "toddlerModeEnabled"    # Z

    .prologue
    .line 161
    const-string v2, "ToddlerModeSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updatetoddlerModeInfo() - toddlerModeEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    if-eqz p1, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/ToddlerModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a196d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "info":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/ToddlerModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09005a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 172
    .local v1, "textColor":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/ToddlerModeSettings;->toddlerModeInfo:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v2, p0, Lcom/android/settings/ToddlerModeSettings;->toddlerModeInfo:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 174
    return-void

    .line 169
    .end local v0    # "info":Ljava/lang/String;
    .end local v1    # "textColor":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ToddlerModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a196e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 170
    .restart local v0    # "info":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/ToddlerModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09005b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .restart local v1    # "textColor":I
    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v5, 0x10

    const/4 v6, -0x2

    const/4 v4, 0x0

    .line 81
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/ToddlerModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 84
    .local v0, "activity":Landroid/app/Activity;
    new-instance v2, Landroid/widget/Switch;

    invoke-direct {v2, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/ToddlerModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 86
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0058

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 88
    .local v1, "padding":I
    iget-object v2, p0, Lcom/android/settings/ToddlerModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4, v4, v1, v4}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 89
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 91
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/ToddlerModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    const/16 v5, 0x15

    invoke-direct {v4, v6, v6, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 95
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/ToddlerModeSettings;->mActionBarLayout:Landroid/view/View;

    .line 96
    new-instance v2, Lcom/android/settings/ToddlerModeSwitchEnabler;

    iget-object v3, p0, Lcom/android/settings/ToddlerModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-direct {v2, v0, v3}, Lcom/android/settings/ToddlerModeSwitchEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v2, p0, Lcom/android/settings/ToddlerModeSettings;->mEnabler:Lcom/android/settings/ToddlerModeSwitchEnabler;

    .line 97
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 101
    const v4, 0x7f040231

    invoke-virtual {p1, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 102
    .local v3, "view":Landroid/view/View;
    const v4, 0x7f100511

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 103
    .local v0, "current":Landroid/view/View;
    const v4, 0x7f10004c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 104
    .local v1, "divider1":Landroid/view/View;
    const v4, 0x7f100050

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 105
    .local v2, "divider2":Landroid/view/View;
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 106
    if-eqz v0, :cond_0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 107
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 108
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 111
    :cond_2
    invoke-static {v6}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 112
    if-eqz v0, :cond_3

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 115
    :cond_3
    const v4, 0x7f100512

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/ToddlerModeSettings;->toddlerModeInfo:Landroid/widget/TextView;

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/ToddlerModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/ToddlerModeSettings;->isToddlerModeOn(Landroid/content/Context;)Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/settings/ToddlerModeSettings;->updatetoddlerModeInfo(Z)V

    .line 117
    return-object v3
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 138
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 140
    iget-object v0, p0, Lcom/android/settings/ToddlerModeSettings;->mEnabler:Lcom/android/settings/ToddlerModeSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings/ToddlerModeSwitchEnabler;->pause()V

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/ToddlerModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ToddlerModeSettings;->mToddlerModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/ToddlerModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ToddlerModeSettings;->mJPNReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 144
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 122
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 124
    iget-object v1, p0, Lcom/android/settings/ToddlerModeSettings;->mEnabler:Lcom/android/settings/ToddlerModeSwitchEnabler;

    invoke-virtual {v1}, Lcom/android/settings/ToddlerModeSwitchEnabler;->resume()V

    .line 125
    invoke-direct {p0}, Lcom/android/settings/ToddlerModeSettings;->updateToddlerSwitch()V

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/ToddlerModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "toddler_mode_switch"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/ToddlerModeSettings;->mToddlerModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 130
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 131
    .local v0, "intentfilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/ToddlerModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ToddlerModeSettings;->mJPNReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 134
    return-void
.end method
