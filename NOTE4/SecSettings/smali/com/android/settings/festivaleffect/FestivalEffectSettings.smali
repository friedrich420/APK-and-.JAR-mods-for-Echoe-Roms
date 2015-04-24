.class public Lcom/android/settings/festivaleffect/FestivalEffectSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "FestivalEffectSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private isGoIntoQuideHub:Z

.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mActivity:Landroid/app/Activity;

.field private mAllowedFunctionsCategory:Landroid/preference/PreferenceCategory;

.field private mCustomizeEvent:Landroid/preference/SwitchPreferenceScreen;

.field private mEventNotification:Landroid/preference/CheckBoxPreference;

.field private mFestivalHome:Landroid/preference/CheckBoxPreference;

.field private mFestivalTheme:Landroid/preference/PreferenceScreen;

.field private mHelpDiv:Landroid/preference/Preference;

.field private mHelpPref:Landroid/preference/Preference;

.field private mHomeLockScreen:Landroid/preference/SwitchPreferenceScreen;

.field private mKeyMelody:Landroid/preference/SwitchPreferenceScreen;

.field private mLockScreenVN:Landroid/preference/SwitchPreferenceScreen;

.field private mLockscreenWallpaper:Landroid/preference/CheckBoxPreference;

.field private mLockscreenWallpaperJ:Landroid/preference/CheckBoxPreference;

.field private mMessagesBackground:Landroid/preference/CheckBoxPreference;

.field private mMessagesBackgroundJ:Landroid/preference/CheckBoxPreference;

.field private mMoreCategory:Landroid/preference/PreferenceCategory;

.field private mNotificaitonPanel:Landroid/preference/SwitchPreferenceScreen;

.field private mNotificaitonPanelJ:Landroid/preference/CheckBoxPreference;

.field private mNotificationPanelVN:Landroid/preference/SwitchPreferenceScreen;

.field private mPersonalizationCategory:Landroid/preference/PreferenceCategory;

.field private mResolver:Landroid/content/ContentResolver;

.field private mWeatherWidget:Landroid/preference/SwitchPreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->isGoIntoQuideHub:Z

    return-void
.end method

.method private broadcastEventNotificationChanged(Z)V
    .locals 2
    .param p1, "isEnable"    # Z

    .prologue
    .line 512
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.festival.NOTIFICATION_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 513
    .local v0, "festival_changed":Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 514
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 515
    return-void
.end method

.method private broadcastFestivalEffectChanged(Z)V
    .locals 2
    .param p1, "isEnable"    # Z

    .prologue
    .line 476
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.festival.FESTIVAL_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 477
    .local v0, "festival_changed":Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 478
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 479
    return-void
.end method

.method private broadcastFestivalHomeChanged(Z)V
    .locals 2
    .param p1, "isEnable"    # Z

    .prologue
    .line 494
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.festival.FESTIVAL_HOME_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 495
    .local v0, "festival_changed":Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 496
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 497
    return-void
.end method

.method private broadcastHomeLockScreenChanged(Z)V
    .locals 2
    .param p1, "isEnable"    # Z

    .prologue
    .line 482
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.festival.HOME_LOCK_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 483
    .local v0, "festival_changed":Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 484
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 485
    return-void
.end method

.method private broadcastLockscreenWallpaperChanged(Z)V
    .locals 2
    .param p1, "isEnable"    # Z

    .prologue
    .line 500
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.festival.LOCKSCREEN_WALLPAPER_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 501
    .local v0, "festival_changed":Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 502
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 503
    return-void
.end method

.method private broadcastMessagesBackgroundChanged(Z)V
    .locals 2
    .param p1, "isEnable"    # Z

    .prologue
    .line 506
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.festival.MESSAGES_BACKGROUND_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 507
    .local v0, "festival_changed":Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 508
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 509
    return-void
.end method

.method private broadcastNotificationPanelChanged(Z)V
    .locals 2
    .param p1, "isEnable"    # Z

    .prologue
    .line 488
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.festival.NOTIFICATION_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 489
    .local v0, "festival_changed":Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 490
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 491
    return-void
.end method


# virtual methods
.method public isAllAllowedFunctionDisabled()Z
    .locals 13

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 444
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    .line 446
    iget-object v11, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "festival_effect_home_lock_screen"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 447
    .local v4, "lockHomeScreen":I
    iget-object v11, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "festival_effect_notification_panel"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 448
    .local v7, "notificationPanel":I
    iget-object v11, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "festival_effect_weather_widget"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 449
    .local v8, "weatherWidget":I
    iget-object v11, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "festival_effect_key_melody"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 450
    .local v3, "keyMelody":I
    iget-object v11, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "festival_effect_customize_event"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 452
    .local v0, "customizeEvent":I
    iget-object v11, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "festival_effect_festival_home"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 453
    .local v2, "festivalHome":I
    iget-object v11, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "festival_effect_lockscreen_wallpaper"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 454
    .local v5, "lockscreenWallpaper":I
    iget-object v11, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "festival_effect_messages_background"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 455
    .local v6, "messagesBackground":I
    iget-object v11, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "festival_effect_notification_panel"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 457
    .local v1, "eventNotification":I
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 458
    const-string v11, "KDI"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 459
    or-int v11, v4, v7

    if-ge v11, v9, :cond_1

    .line 470
    :cond_0
    :goto_0
    return v9

    :cond_1
    move v9, v10

    .line 459
    goto :goto_0

    .line 461
    :cond_2
    or-int v11, v4, v7

    or-int/2addr v11, v6

    if-lt v11, v9, :cond_0

    move v9, v10

    goto :goto_0

    .line 463
    :cond_3
    invoke-static {}, Lcom/android/settings/Utils;->isSupportVNFestival()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 464
    or-int v11, v4, v7

    if-lt v11, v9, :cond_0

    move v9, v10

    goto :goto_0

    .line 467
    :cond_4
    const-string v11, "2"

    iget-object v12, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mActivity:Landroid/app/Activity;

    invoke-static {v12}, Lcom/android/settings/Utils;->getFestivalType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 468
    or-int v11, v4, v7

    if-lt v11, v9, :cond_0

    move v9, v10

    goto :goto_0

    .line 470
    :cond_5
    or-int v11, v2, v5

    or-int/2addr v11, v6

    or-int/2addr v11, v1

    if-lt v11, v9, :cond_0

    move v9, v10

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "desiredState"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 355
    if-eqz p2, :cond_3

    .line 356
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "festival_effect_enabled"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 358
    invoke-static {}, Lcom/android/settings/Utils;->isSupportVNFestival()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 359
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "festival_effect_home_lock_screen"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    move v0, v2

    .line 360
    .local v0, "isEnableLockscreen":Z
    :goto_0
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "festival_effect_notification_panel"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    .line 361
    .local v1, "isEnableNotif":Z
    :goto_1
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 362
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "festival_effect_home_lock_screen"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 363
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "festival_effect_notification_panel"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 364
    iget-object v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mLockScreenVN:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, p2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 365
    iget-object v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mNotificationPanelVN:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, p2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 373
    .end local v0    # "isEnableLockscreen":Z
    .end local v1    # "isEnableNotif":Z
    :cond_0
    :goto_2
    iget-object v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mHomeLockScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 374
    iget-object v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mNotificaitonPanel:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 375
    iget-object v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mWeatherWidget:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 376
    iget-object v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mKeyMelody:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 377
    iget-object v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mCustomizeEvent:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 378
    invoke-direct {p0, p2}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->broadcastFestivalEffectChanged(Z)V

    .line 379
    iget-object v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mFestivalHome:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 380
    iget-object v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mLockscreenWallpaper:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 381
    iget-object v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mMessagesBackground:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 382
    iget-object v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mEventNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 383
    iget-object v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mLockscreenWallpaperJ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 384
    iget-object v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mMessagesBackgroundJ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 385
    iget-object v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mNotificaitonPanelJ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 386
    iget-object v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mLockScreenVN:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 387
    iget-object v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mNotificationPanelVN:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 388
    return-void

    :cond_1
    move v0, v3

    .line 359
    goto :goto_0

    .restart local v0    # "isEnableLockscreen":Z
    :cond_2
    move v1, v3

    .line 360
    goto :goto_1

    .line 369
    .end local v0    # "isEnableLockscreen":Z
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "festival_effect_enabled"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 97
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 100
    const v4, 0x7f070056

    invoke-virtual {p0, v4}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->addPreferencesFromResource(I)V

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mActivity:Landroid/app/Activity;

    .line 103
    new-instance v4, Landroid/widget/Switch;

    iget-object v7, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v4, v7}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    .line 105
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "festival_effect_enabled"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    move v1, v5

    .line 106
    .local v1, "motionEngineState":Z
    :goto_0
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 107
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 109
    const-string v4, "festival_effect_help"

    invoke-virtual {p0, v4}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mHelpPref:Landroid/preference/Preference;

    .line 110
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mHelpPref:Landroid/preference/Preference;

    const v7, 0x7f0400b8

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 111
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mHelpPref:Landroid/preference/Preference;

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 112
    const-string v4, "festival_help_divider"

    invoke-virtual {p0, v4}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mHelpDiv:Landroid/preference/Preference;

    .line 113
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mHelpDiv:Landroid/preference/Preference;

    const v7, 0x7f0400b7

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 114
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mHelpDiv:Landroid/preference/Preference;

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 115
    const-string v4, "allowed_functions_category"

    invoke-virtual {p0, v4}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    iput-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mAllowedFunctionsCategory:Landroid/preference/PreferenceCategory;

    .line 116
    const-string v4, "home_lock_screen"

    invoke-virtual {p0, v4}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreferenceScreen;

    iput-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mHomeLockScreen:Landroid/preference/SwitchPreferenceScreen;

    .line 117
    const-string v4, "notification_panel"

    invoke-virtual {p0, v4}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreferenceScreen;

    iput-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mNotificaitonPanel:Landroid/preference/SwitchPreferenceScreen;

    .line 118
    const-string v4, "weather_widget"

    invoke-virtual {p0, v4}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreferenceScreen;

    iput-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mWeatherWidget:Landroid/preference/SwitchPreferenceScreen;

    .line 119
    const-string v4, "allowed_personalization_category"

    invoke-virtual {p0, v4}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    iput-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mPersonalizationCategory:Landroid/preference/PreferenceCategory;

    .line 120
    const-string v4, "key_melody"

    invoke-virtual {p0, v4}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreferenceScreen;

    iput-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mKeyMelody:Landroid/preference/SwitchPreferenceScreen;

    .line 121
    const-string v4, "customize_event"

    invoke-virtual {p0, v4}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreferenceScreen;

    iput-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mCustomizeEvent:Landroid/preference/SwitchPreferenceScreen;

    .line 122
    const-string v4, "notification_panel_j"

    invoke-virtual {p0, v4}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mNotificaitonPanelJ:Landroid/preference/CheckBoxPreference;

    .line 123
    const-string v4, "lock_screen_wallpaper_j"

    invoke-virtual {p0, v4}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mLockscreenWallpaperJ:Landroid/preference/CheckBoxPreference;

    .line 124
    const-string v4, "messages_background_j"

    invoke-virtual {p0, v4}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mMessagesBackgroundJ:Landroid/preference/CheckBoxPreference;

    .line 126
    const-string v4, "festival_home"

    invoke-virtual {p0, v4}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mFestivalHome:Landroid/preference/CheckBoxPreference;

    .line 127
    const-string v4, "lock_screen_wallpaper"

    invoke-virtual {p0, v4}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mLockscreenWallpaper:Landroid/preference/CheckBoxPreference;

    .line 128
    const-string v4, "messages_background"

    invoke-virtual {p0, v4}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mMessagesBackground:Landroid/preference/CheckBoxPreference;

    .line 129
    const-string v4, "event_notification"

    invoke-virtual {p0, v4}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mEventNotification:Landroid/preference/CheckBoxPreference;

    .line 130
    const-string v4, "more_category"

    invoke-virtual {p0, v4}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    iput-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mMoreCategory:Landroid/preference/PreferenceCategory;

    .line 131
    const-string v4, "festival_theme"

    invoke-virtual {p0, v4}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mFestivalTheme:Landroid/preference/PreferenceScreen;

    .line 133
    const-string v4, "lock_screen_vn"

    invoke-virtual {p0, v4}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreferenceScreen;

    iput-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mLockScreenVN:Landroid/preference/SwitchPreferenceScreen;

    .line 134
    const-string v4, "notification_panel_vn"

    invoke-virtual {p0, v4}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreferenceScreen;

    iput-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mNotificationPanelVN:Landroid/preference/SwitchPreferenceScreen;

    .line 136
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mHomeLockScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 137
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mNotificaitonPanel:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 138
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mWeatherWidget:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 139
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mKeyMelody:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 140
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mCustomizeEvent:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 142
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mFestivalHome:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 143
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mLockscreenWallpaper:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 144
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mMessagesBackground:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 145
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mEventNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 146
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mLockscreenWallpaperJ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 147
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mMessagesBackgroundJ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 148
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mNotificaitonPanelJ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 150
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mLockScreenVN:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 151
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mNotificationPanelVN:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mWeatherWidget:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mPersonalizationCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 156
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mKeyMelody:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mCustomizeEvent:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 159
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mHelpPref:Landroid/preference/Preference;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mAllowedFunctionsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 163
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mLockscreenWallpaperJ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 164
    const-string v4, "KDI"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mMessagesBackgroundJ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 167
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mNotificaitonPanelJ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 195
    :goto_1
    iget-boolean v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mOpenDetailMenu:Z

    if-eqz v4, :cond_1

    sget v4, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mSettingValue:I

    const/4 v7, -0x1

    if-eq v4, v7, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "festival_effect_enabled"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    .line 197
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 198
    .local v0, "extra_bundle":Landroid/os/Bundle;
    const-string v4, "extra_parent_preference_key"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 199
    .local v2, "targetKey":Ljava/lang/String;
    sget v4, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mSettingValue:I

    if-ne v4, v5, :cond_6

    move v3, v5

    .line 200
    .local v3, "value":Z
    :goto_2
    const-string v4, "home_lock_screen"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 201
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mHomeLockScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v3}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 202
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mHomeLockScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 240
    .end local v0    # "extra_bundle":Landroid/os/Bundle;
    .end local v2    # "targetKey":Ljava/lang/String;
    .end local v3    # "value":Z
    :cond_1
    :goto_3
    return-void

    .end local v1    # "motionEngineState":Z
    :cond_2
    move v1, v6

    .line 105
    goto/16 :goto_0

    .line 168
    .restart local v1    # "motionEngineState":Z
    :cond_3
    invoke-static {}, Lcom/android/settings/Utils;->isSupportVNFestival()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 169
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 170
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mHelpPref:Landroid/preference/Preference;

    const v7, 0x7f0400b9

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mHelpPref:Landroid/preference/Preference;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 172
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mAllowedFunctionsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 173
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mLockScreenVN:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mNotificationPanelVN:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 176
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mLockScreenVN:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 177
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mNotificationPanelVN:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 178
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mLockscreenWallpaperJ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 179
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mMessagesBackgroundJ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 180
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mNotificaitonPanelJ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 181
    const-string v4, "2"

    iget-object v7, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mActivity:Landroid/app/Activity;

    invoke-static {v7}, Lcom/android/settings/Utils;->getFestivalType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 182
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mHelpDiv:Landroid/preference/Preference;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mHomeLockScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 184
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mNotificaitonPanel:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 186
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mFestivalHome:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 187
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mLockscreenWallpaper:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 188
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mMessagesBackground:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 189
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mMoreCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 190
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mFestivalTheme:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mEventNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .restart local v0    # "extra_bundle":Landroid/os/Bundle;
    .restart local v2    # "targetKey":Ljava/lang/String;
    :cond_6
    move v3, v6

    .line 199
    goto/16 :goto_2

    .line 203
    .restart local v3    # "value":Z
    :cond_7
    const-string v4, "notification_panel"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 204
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mNotificaitonPanel:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v3}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 205
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mNotificaitonPanel:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 206
    :cond_8
    const-string v4, "weather_widget"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 207
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mWeatherWidget:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v3}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 208
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mWeatherWidget:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 209
    :cond_9
    const-string v4, "festival_home"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 210
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mFestivalHome:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 211
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mFestivalHome:Landroid/preference/CheckBoxPreference;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 212
    :cond_a
    const-string v4, "lock_screen_wallpaper"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 213
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mLockscreenWallpaper:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 214
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mLockscreenWallpaper:Landroid/preference/CheckBoxPreference;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 215
    :cond_b
    const-string v4, "messages_background"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 216
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mMessagesBackground:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 217
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mMessagesBackground:Landroid/preference/CheckBoxPreference;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 218
    :cond_c
    const-string v4, "event_notification"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 219
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mEventNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 220
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mEventNotification:Landroid/preference/CheckBoxPreference;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 221
    :cond_d
    const-string v4, "lock_screen_wallpaper_j"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 222
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mLockscreenWallpaperJ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 223
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mLockscreenWallpaperJ:Landroid/preference/CheckBoxPreference;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 224
    :cond_e
    const-string v4, "messages_background_j"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 225
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mMessagesBackgroundJ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 226
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mMessagesBackgroundJ:Landroid/preference/CheckBoxPreference;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 227
    :cond_f
    const-string v4, "notification_panel_j"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 228
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mNotificaitonPanelJ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 229
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mNotificaitonPanelJ:Landroid/preference/CheckBoxPreference;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_3
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 328
    iget-boolean v0, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->isGoIntoQuideHub:Z

    if-nez v0, :cond_1

    .line 329
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->isAllAllowedFunctionDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "festival_effect_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a11a0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 332
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "festival_effect_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 334
    iget-object v0, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 341
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 342
    return-void

    .line 337
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->isAllAllowedFunctionDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "festival_effect_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 397
    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    move v0, v2

    .line 398
    .local v0, "value":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mHomeLockScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mLockScreenVN:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 399
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "festival_effect_home_lock_screen"

    invoke-static {v1, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 400
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->broadcastHomeLockScreenChanged(Z)V

    .line 433
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->isAllAllowedFunctionDisabled()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    .line 434
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "festival_effect_enabled"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 436
    iget-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 437
    invoke-direct {p0, v3}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->broadcastFestivalEffectChanged(Z)V

    .line 440
    :cond_2
    return v2

    .end local v0    # "value":I
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_3
    move v0, v3

    .line 397
    goto :goto_0

    .line 401
    .restart local v0    # "value":I
    :cond_4
    iget-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mNotificaitonPanel:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mNotificationPanelVN:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 402
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "festival_effect_notification_panel"

    invoke-static {v1, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 403
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->broadcastNotificationPanelChanged(Z)V

    goto :goto_1

    .line 404
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_6
    iget-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mNotificaitonPanelJ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 405
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "festival_effect_notification_panel"

    invoke-static {v1, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 406
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->broadcastNotificationPanelChanged(Z)V

    goto :goto_1

    .line 407
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_7
    iget-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mWeatherWidget:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 408
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "festival_effect_weather_widget"

    invoke-static {v1, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 409
    :cond_8
    iget-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mKeyMelody:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 410
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "festival_effect_key_melody"

    invoke-static {v1, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 411
    :cond_9
    iget-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mCustomizeEvent:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 412
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "festival_effect_customize_event"

    invoke-static {v1, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 413
    :cond_a
    iget-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mFestivalHome:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 414
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "festival_effect_festival_home"

    invoke-static {v1, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 415
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->broadcastFestivalHomeChanged(Z)V

    goto/16 :goto_1

    .line 416
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_b
    iget-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mLockscreenWallpaper:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 417
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "festival_effect_lockscreen_wallpaper"

    invoke-static {v1, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 418
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->broadcastLockscreenWallpaperChanged(Z)V

    goto/16 :goto_1

    .line 419
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_c
    iget-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mLockscreenWallpaperJ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 420
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "festival_effect_home_lock_screen"

    invoke-static {v1, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 421
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->broadcastHomeLockScreenChanged(Z)V

    goto/16 :goto_1

    .line 422
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_d
    iget-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mMessagesBackground:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 423
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "festival_effect_messages_background"

    invoke-static {v1, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 424
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->broadcastMessagesBackgroundChanged(Z)V

    goto/16 :goto_1

    .line 425
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_e
    iget-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mMessagesBackgroundJ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 426
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "festival_effect_messages_background"

    invoke-static {v1, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 427
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->broadcastMessagesBackgroundChanged(Z)V

    goto/16 :goto_1

    .line 428
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_f
    iget-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mEventNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 429
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "festival_effect_notification_panel"

    invoke-static {v1, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 430
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->broadcastEventNotificationChanged(Z)V

    goto/16 :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 392
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->isGoIntoQuideHub:Z

    .line 393
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 13

    .prologue
    const/16 v10, 0x10

    const/4 v12, -0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 245
    iget-boolean v5, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 246
    .local v5, "super_mOpenDetailMenu":Z
    iput-boolean v7, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 248
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 250
    iput-boolean v7, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->isGoIntoQuideHub:Z

    .line 252
    iget-object v8, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mActivity:Landroid/app/Activity;

    instance-of v8, v8, Lcom/android/settings/SettingsActivity;

    if-eqz v8, :cond_0

    .line 253
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mActivity:Landroid/app/Activity;

    check-cast v4, Lcom/android/settings/SettingsActivity;

    .line 254
    .local v4, "sa":Lcom/android/settings/SettingsActivity;
    iget-object v8, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0f0058

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 256
    .local v3, "padding":I
    iget-object v8, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v8, v7, v7, v3, v7}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 257
    iget-object v8, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v8

    invoke-virtual {v8, v10, v10}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 259
    iget-object v8, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v10, Landroid/app/ActionBar$LayoutParams;

    const/16 v11, 0x15

    invoke-direct {v10, v12, v12, v11}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v8, v9, v10}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 263
    iget-object v8, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mActionBarLayout:Landroid/view/View;

    .line 266
    .end local v3    # "padding":I
    .end local v4    # "sa":Lcom/android/settings/SettingsActivity;
    :cond_0
    iget-object v8, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v8, :cond_1

    .line 267
    iget-object v8, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    .line 268
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 271
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    .line 273
    iget-object v8, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "festival_effect_enabled"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_5

    move v2, v6

    .line 276
    .local v2, "motionEngineState":Z
    :goto_0
    iget-object v8, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mHomeLockScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, v2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 277
    iget-object v8, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mNotificaitonPanel:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, v2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 278
    iget-object v8, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mWeatherWidget:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, v2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 279
    iget-object v8, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mKeyMelody:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, v2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 280
    iget-object v8, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mCustomizeEvent:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, v2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 281
    iget-object v8, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mLockscreenWallpaperJ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 282
    iget-object v8, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mMessagesBackgroundJ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 283
    iget-object v8, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mNotificaitonPanelJ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 285
    iget-object v8, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mFestivalHome:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 286
    iget-object v8, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mLockscreenWallpaper:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 287
    iget-object v8, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mMessagesBackground:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 288
    iget-object v8, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mEventNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 290
    iget-object v8, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mLockScreenVN:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, v2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 291
    iget-object v8, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mNotificationPanelVN:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, v2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 293
    iget-object v9, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mHomeLockScreen:Landroid/preference/SwitchPreferenceScreen;

    iget-object v8, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "festival_effect_home_lock_screen"

    invoke-static {v8, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_6

    move v8, v6

    :goto_1
    invoke-virtual {v9, v8}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 294
    iget-object v9, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mNotificaitonPanel:Landroid/preference/SwitchPreferenceScreen;

    iget-object v8, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "festival_effect_notification_panel"

    invoke-static {v8, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_7

    move v8, v6

    :goto_2
    invoke-virtual {v9, v8}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 295
    iget-object v9, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mWeatherWidget:Landroid/preference/SwitchPreferenceScreen;

    iget-object v8, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "festival_effect_weather_widget"

    invoke-static {v8, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_8

    move v8, v6

    :goto_3
    invoke-virtual {v9, v8}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 296
    iget-object v9, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mKeyMelody:Landroid/preference/SwitchPreferenceScreen;

    iget-object v8, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "festival_effect_key_melody"

    invoke-static {v8, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_9

    move v8, v6

    :goto_4
    invoke-virtual {v9, v8}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 297
    iget-object v9, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mCustomizeEvent:Landroid/preference/SwitchPreferenceScreen;

    iget-object v8, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "festival_effect_customize_event"

    invoke-static {v8, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_a

    move v8, v6

    :goto_5
    invoke-virtual {v9, v8}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 298
    iget-object v9, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mNotificaitonPanelJ:Landroid/preference/CheckBoxPreference;

    iget-object v8, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "festival_effect_notification_panel"

    invoke-static {v8, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_b

    move v8, v6

    :goto_6
    invoke-virtual {v9, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 299
    iget-object v9, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mLockscreenWallpaperJ:Landroid/preference/CheckBoxPreference;

    iget-object v8, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "festival_effect_home_lock_screen"

    invoke-static {v8, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_c

    move v8, v6

    :goto_7
    invoke-virtual {v9, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 300
    iget-object v9, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mMessagesBackgroundJ:Landroid/preference/CheckBoxPreference;

    iget-object v8, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "festival_effect_messages_background"

    invoke-static {v8, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_d

    move v8, v6

    :goto_8
    invoke-virtual {v9, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 302
    iget-object v9, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mFestivalHome:Landroid/preference/CheckBoxPreference;

    iget-object v8, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "festival_effect_festival_home"

    invoke-static {v8, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_e

    move v8, v6

    :goto_9
    invoke-virtual {v9, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 303
    iget-object v9, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mLockscreenWallpaper:Landroid/preference/CheckBoxPreference;

    iget-object v8, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "festival_effect_lockscreen_wallpaper"

    invoke-static {v8, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_f

    move v8, v6

    :goto_a
    invoke-virtual {v9, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 304
    iget-object v9, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mMessagesBackground:Landroid/preference/CheckBoxPreference;

    iget-object v8, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "festival_effect_messages_background"

    invoke-static {v8, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_10

    move v8, v6

    :goto_b
    invoke-virtual {v9, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 305
    iget-object v9, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mEventNotification:Landroid/preference/CheckBoxPreference;

    iget-object v8, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "festival_effect_notification_panel"

    invoke-static {v8, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_11

    move v8, v6

    :goto_c
    invoke-virtual {v9, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 307
    invoke-static {}, Lcom/android/settings/Utils;->isSupportVNFestival()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 308
    iget-object v8, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "festival_effect_home_lock_screen"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_12

    move v0, v6

    .line 309
    .local v0, "isEnableLockscreen":Z
    :goto_d
    iget-object v8, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "festival_effect_notification_panel"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_13

    move v1, v6

    .line 310
    .local v1, "isEnableNotif":Z
    :goto_e
    iget-object v6, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mLockScreenVN:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 311
    iget-object v6, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mNotificationPanelVN:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 312
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    .line 313
    iget-object v6, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v7}, Landroid/widget/Switch;->setChecked(Z)V

    .line 317
    .end local v0    # "isEnableLockscreen":Z
    .end local v1    # "isEnableNotif":Z
    :cond_2
    iput-boolean v5, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 318
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->openSearchDetailMenu()V

    .line 321
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isSupportVNFestival()Z

    move-result v6

    if-nez v6, :cond_4

    :cond_3
    const-string v6, "2"

    iget-object v7, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mActivity:Landroid/app/Activity;

    invoke-static {v7}, Lcom/android/settings/Utils;->getFestivalType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 322
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getListView()Landroid/widget/ListView;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 324
    :cond_4
    return-void

    .end local v2    # "motionEngineState":Z
    :cond_5
    move v2, v7

    .line 273
    goto/16 :goto_0

    .restart local v2    # "motionEngineState":Z
    :cond_6
    move v8, v7

    .line 293
    goto/16 :goto_1

    :cond_7
    move v8, v7

    .line 294
    goto/16 :goto_2

    :cond_8
    move v8, v7

    .line 295
    goto/16 :goto_3

    :cond_9
    move v8, v7

    .line 296
    goto/16 :goto_4

    :cond_a
    move v8, v7

    .line 297
    goto/16 :goto_5

    :cond_b
    move v8, v7

    .line 298
    goto/16 :goto_6

    :cond_c
    move v8, v7

    .line 299
    goto/16 :goto_7

    :cond_d
    move v8, v7

    .line 300
    goto/16 :goto_8

    :cond_e
    move v8, v7

    .line 302
    goto/16 :goto_9

    :cond_f
    move v8, v7

    .line 303
    goto/16 :goto_a

    :cond_10
    move v8, v7

    .line 304
    goto/16 :goto_b

    :cond_11
    move v8, v7

    .line 305
    goto :goto_c

    :cond_12
    move v0, v7

    .line 308
    goto :goto_d

    .restart local v0    # "isEnableLockscreen":Z
    :cond_13
    move v1, v7

    .line 309
    goto :goto_e
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 348
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 350
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 351
    return-void
.end method
