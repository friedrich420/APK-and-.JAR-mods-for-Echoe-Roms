.class public Lcom/android/settings/LockAddInfoSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "LockAddInfoSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mMobileDataChargeDialog:Landroid/app/AlertDialog;

.field private mPermissionDialog:Landroid/app/AlertDialog;

.field private mSHealthItentExtra_type:Ljava/lang/String;

.field private mSteps:Landroid/preference/CheckBoxPreference;

.field private mViewType:I

.field private mWeather:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 83
    iput-object v1, p0, Lcom/android/settings/LockAddInfoSettings;->mMobileDataChargeDialog:Landroid/app/AlertDialog;

    .line 84
    iput-object v1, p0, Lcom/android/settings/LockAddInfoSettings;->mPermissionDialog:Landroid/app/AlertDialog;

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/LockAddInfoSettings;->mViewType:I

    .line 98
    iput-object v1, p0, Lcom/android/settings/LockAddInfoSettings;->mSHealthItentExtra_type:Ljava/lang/String;

    return-void
.end method

.method private Steps_setEnabled(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 546
    invoke-virtual {p0}, Lcom/android/settings/LockAddInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.sec.android.app.shealth"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/android/settings/LockAddInfoSettings;->mSteps:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 551
    :goto_0
    return-void

    .line 549
    :cond_0
    iget-object v0, p0, Lcom/android/settings/LockAddInfoSettings;->mSteps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/LockAddInfoSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/LockAddInfoSettings;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/LockAddInfoSettings;->mSteps:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/LockAddInfoSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/LockAddInfoSettings;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/settings/LockAddInfoSettings;->sendWeatherData()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/LockAddInfoSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/LockAddInfoSettings;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/settings/LockAddInfoSettings;->showPermissionDialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/LockAddInfoSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/LockAddInfoSettings;

    .prologue
    .line 64
    iget v0, p0, Lcom/android/settings/LockAddInfoSettings;->mViewType:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/LockAddInfoSettings;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/LockAddInfoSettings;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/LockAddInfoSettings;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/LockAddInfoSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/LockAddInfoSettings;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/LockAddInfoSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/LockAddInfoSettings;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/LockAddInfoSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/settings/LockAddInfoSettings;->saveSharedPreferences(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/LockAddInfoSettings;Landroid/preference/Preference;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/LockAddInfoSettings;
    .param p1, "x1"    # Landroid/preference/Preference;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/settings/LockAddInfoSettings;->clickItemWeather(Landroid/preference/Preference;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/LockAddInfoSettings;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/LockAddInfoSettings;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/LockAddInfoSettings;->mSHealthItentExtra_type:Ljava/lang/String;

    return-object v0
.end method

.method private checkGuidePopupAvailable(Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 554
    const/4 v0, 0x0

    .line 557
    .local v0, "doNotShow":Z
    iget-object v5, p0, Lcom/android/settings/LockAddInfoSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    if-ne p1, v5, :cond_1

    .line 558
    const-string v2, "com.android.settings.LockShowInfoSettings.Weather"

    .line 562
    .local v2, "spName":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/LockAddInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 564
    .local v1, "sp":Landroid/content/SharedPreferences;
    if-eqz v1, :cond_0

    .line 565
    const-string v5, "DoNotShowDialog"

    invoke-interface {v1, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 566
    :cond_0
    if-nez v0, :cond_2

    :goto_1
    return v3

    .line 560
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    .end local v2    # "spName":Ljava/lang/String;
    :cond_1
    const-string v2, "com.android.settings.LockShowInfoSettings.Pedometer"

    .restart local v2    # "spName":Ljava/lang/String;
    goto :goto_0

    .restart local v1    # "sp":Landroid/content/SharedPreferences;
    :cond_2
    move v3, v4

    .line 566
    goto :goto_1
.end method

.method private clickItemWeather(Landroid/preference/Preference;)V
    .locals 9
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 657
    invoke-virtual {p0}, Lcom/android/settings/LockAddInfoSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lock_show_info"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_1

    move v3, v4

    .line 663
    .local v3, "mIsMaster":Z
    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 664
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.sec.android.widgetapp.ap.kweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 665
    .local v2, "mIntent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/settings/LockAddInfoSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz v3, :cond_2

    .line 666
    const-string v6, "START"

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 669
    :goto_1
    const-string v6, "PACKAGE"

    const-string v7, "com.android.systemui"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 670
    const-string v6, "CP"

    const-string v7, "Kweather"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 671
    invoke-virtual {p0}, Lcom/android/settings/LockAddInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 672
    invoke-virtual {p0}, Lcom/android/settings/LockAddInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lock_additional_weather"

    iget-object v8, p0, Lcom/android/settings/LockAddInfoSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_3

    :goto_2
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 714
    .end local v2    # "mIntent":Landroid/content/Intent;
    :cond_0
    :goto_3
    return-void

    .end local v3    # "mIsMaster":Z
    :cond_1
    move v3, v5

    .line 657
    goto :goto_0

    .line 668
    .restart local v2    # "mIntent":Landroid/content/Intent;
    .restart local v3    # "mIsMaster":Z
    :cond_2
    const-string v6, "START"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    :cond_3
    move v4, v5

    .line 672
    goto :goto_2

    .line 674
    .end local v2    # "mIntent":Landroid/content/Intent;
    :cond_4
    invoke-static {}, Lcom/android/settings/Utils;->isChinaNAL()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 675
    invoke-virtual {p0}, Lcom/android/settings/LockAddInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "com.android.settings.LockAddInfoSettings"

    invoke-virtual {v6, v7, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 676
    .local v0, "ReverbSharedPrefs":Landroid/content/SharedPreferences;
    const/4 v1, 0x0

    .line 678
    .local v1, "doNotShowLocation":Z
    if-eqz v0, :cond_0

    .line 679
    const-string v6, "DoNotShowDialogLocation"

    invoke-interface {v0, v6, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 680
    const-string v6, "LockAddInfoSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doNotShowLocation="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    iget-object v6, p0, Lcom/android/settings/LockAddInfoSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_5

    if-eqz v3, :cond_5

    .line 682
    iput v4, p0, Lcom/android/settings/LockAddInfoSettings;->mViewType:I

    .line 683
    invoke-direct {p0}, Lcom/android/settings/LockAddInfoSettings;->showMobileDateChargeEnableDialog()V

    goto :goto_3

    .line 685
    :cond_5
    iget-object v6, p0, Lcom/android/settings/LockAddInfoSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_6

    if-eqz v3, :cond_6

    if-nez v1, :cond_6

    .line 686
    iput v4, p0, Lcom/android/settings/LockAddInfoSettings;->mViewType:I

    .line 687
    invoke-direct {p0}, Lcom/android/settings/LockAddInfoSettings;->showPermissionDialog()V

    goto :goto_3

    .line 690
    :cond_6
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.sec.android.widgetapp.cmaweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 691
    .restart local v2    # "mIntent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/settings/LockAddInfoSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_7

    if-eqz v3, :cond_7

    .line 692
    const-string v6, "START"

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 696
    :goto_4
    const-string v6, "PACKAGE"

    const-string v7, "com.android.systemui"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 697
    const-string v6, "CP"

    const-string v7, "Cmaweather"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 698
    invoke-virtual {p0}, Lcom/android/settings/LockAddInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 699
    invoke-virtual {p0}, Lcom/android/settings/LockAddInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lock_additional_weather"

    iget-object v8, p0, Lcom/android/settings/LockAddInfoSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_8

    :goto_5
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    .line 694
    :cond_7
    const-string v6, "START"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_4

    :cond_8
    move v4, v5

    .line 699
    goto :goto_5

    .line 703
    .end local v0    # "ReverbSharedPrefs":Landroid/content/SharedPreferences;
    .end local v1    # "doNotShowLocation":Z
    .end local v2    # "mIntent":Landroid/content/Intent;
    :cond_9
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 704
    .restart local v2    # "mIntent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/settings/LockAddInfoSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_a

    if-eqz v3, :cond_a

    .line 705
    const-string v6, "START"

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 709
    :goto_6
    const-string v6, "PACKAGE"

    const-string v7, "com.android.systemui"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 710
    const-string v6, "CP"

    const-string v7, "Accuweather"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 711
    invoke-virtual {p0}, Lcom/android/settings/LockAddInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 712
    invoke-virtual {p0}, Lcom/android/settings/LockAddInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lock_additional_weather"

    iget-object v8, p0, Lcom/android/settings/LockAddInfoSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_b

    :goto_7
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    .line 707
    :cond_a
    const-string v6, "START"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_6

    :cond_b
    move v4, v5

    .line 712
    goto :goto_7
.end method

.method private saveSharedPreferences(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 570
    invoke-virtual {p0}, Lcom/android/settings/LockAddInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, p1, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 572
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 573
    .local v0, "ed":Landroid/content/SharedPreferences$Editor;
    const-string v2, "DoNotShowDialog"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 574
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 575
    return-void
.end method

.method private sendWeatherData()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 527
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.widgetapp.cmaweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 528
    .local v0, "mIntent":Landroid/content/Intent;
    const-string v1, "START"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 529
    const-string v1, "PACKAGE"

    const-string v2, "com.android.systemui"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 530
    const-string v1, "CP"

    const-string v2, "Cmaweather"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 531
    invoke-virtual {p0}, Lcom/android/settings/LockAddInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 533
    iget v1, p0, Lcom/android/settings/LockAddInfoSettings;->mViewType:I

    if-nez v1, :cond_0

    .line 535
    invoke-virtual {p0}, Lcom/android/settings/LockAddInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_additional_info"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 536
    iget-object v1, p0, Lcom/android/settings/LockAddInfoSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 537
    invoke-direct {p0, v3}, Lcom/android/settings/LockAddInfoSettings;->Steps_setEnabled(Z)V

    .line 542
    :goto_0
    return-void

    .line 540
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/LockAddInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_additional_weather"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private showGuidePopup(Landroid/preference/Preference;)V
    .locals 12
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const v11, 0x7f0a0f8c

    const v8, 0x7f0a0f8b

    const v10, 0x104000a

    const/high16 v9, 0x1040000

    .line 580
    iget-object v7, p0, Lcom/android/settings/LockAddInfoSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    if-ne p1, v7, :cond_1

    .line 581
    const v7, 0x7f0a0f85

    invoke-virtual {p0, v7}, Lcom/android/settings/LockAddInfoSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 582
    .local v6, "popupTitle":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/LockAddInfoSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 583
    invoke-virtual {p0, v8}, Lcom/android/settings/LockAddInfoSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 595
    .local v5, "popupMessage":Ljava/lang/String;
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/LockAddInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 596
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v7, "layout_inflater"

    invoke-virtual {p0, v7}, Lcom/android/settings/LockAddInfoSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 598
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v7, 0x7f040086

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 599
    .local v3, "layout":Landroid/view/View;
    const v7, 0x7f10016b

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 600
    .local v4, "message":Landroid/widget/TextView;
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 601
    const v7, 0x7f10016c

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 602
    .local v1, "check":Landroid/widget/CheckBox;
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 603
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 604
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 606
    iget-object v7, p0, Lcom/android/settings/LockAddInfoSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    if-ne p1, v7, :cond_3

    .line 607
    new-instance v7, Lcom/android/settings/LockAddInfoSettings$12;

    invoke-direct {v7, p0}, Lcom/android/settings/LockAddInfoSettings$12;-><init>(Lcom/android/settings/LockAddInfoSettings;)V

    invoke-virtual {v0, v9, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 613
    new-instance v7, Lcom/android/settings/LockAddInfoSettings$13;

    invoke-direct {v7, p0}, Lcom/android/settings/LockAddInfoSettings$13;-><init>(Lcom/android/settings/LockAddInfoSettings;)V

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 618
    new-instance v7, Lcom/android/settings/LockAddInfoSettings$14;

    invoke-direct {v7, p0, v3}, Lcom/android/settings/LockAddInfoSettings$14;-><init>(Lcom/android/settings/LockAddInfoSettings;Landroid/view/View;)V

    invoke-virtual {v0, v10, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 652
    :goto_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 653
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 654
    return-void

    .line 585
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "check":Landroid/widget/CheckBox;
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    .end local v3    # "layout":Landroid/view/View;
    .end local v4    # "message":Landroid/widget/TextView;
    .end local v5    # "popupMessage":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v11}, Lcom/android/settings/LockAddInfoSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "popupMessage":Ljava/lang/String;
    goto :goto_0

    .line 587
    .end local v5    # "popupMessage":Ljava/lang/String;
    .end local v6    # "popupTitle":Ljava/lang/String;
    :cond_1
    const v7, 0x7f0a0f8d

    invoke-virtual {p0, v7}, Lcom/android/settings/LockAddInfoSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 588
    .restart local v6    # "popupTitle":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/LockAddInfoSettings;->mSteps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 589
    invoke-virtual {p0, v8}, Lcom/android/settings/LockAddInfoSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "popupMessage":Ljava/lang/String;
    goto :goto_0

    .line 591
    .end local v5    # "popupMessage":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, v11}, Lcom/android/settings/LockAddInfoSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "popupMessage":Ljava/lang/String;
    goto :goto_0

    .line 628
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .restart local v1    # "check":Landroid/widget/CheckBox;
    .restart local v2    # "inflater":Landroid/view/LayoutInflater;
    .restart local v3    # "layout":Landroid/view/View;
    .restart local v4    # "message":Landroid/widget/TextView;
    :cond_3
    new-instance v7, Lcom/android/settings/LockAddInfoSettings$15;

    invoke-direct {v7, p0}, Lcom/android/settings/LockAddInfoSettings$15;-><init>(Lcom/android/settings/LockAddInfoSettings;)V

    invoke-virtual {v0, v9, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 634
    new-instance v7, Lcom/android/settings/LockAddInfoSettings$16;

    invoke-direct {v7, p0}, Lcom/android/settings/LockAddInfoSettings$16;-><init>(Lcom/android/settings/LockAddInfoSettings;)V

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 639
    new-instance v7, Lcom/android/settings/LockAddInfoSettings$17;

    invoke-direct {v7, p0, v3}, Lcom/android/settings/LockAddInfoSettings$17;-><init>(Lcom/android/settings/LockAddInfoSettings;Landroid/view/View;)V

    invoke-virtual {v0, v10, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method

.method private showMobileDateChargeEnableDialog()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 369
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/LockAddInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 370
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v5, p0, Lcom/android/settings/LockAddInfoSettings;->mMobileDataChargeDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_0

    .line 371
    iget-object v5, p0, Lcom/android/settings/LockAddInfoSettings;->mMobileDataChargeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    .line 372
    iput-object v7, p0, Lcom/android/settings/LockAddInfoSettings;->mMobileDataChargeDialog:Landroid/app/AlertDialog;

    .line 375
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/LockAddInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 376
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f04008b

    invoke-virtual {v2, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 377
    .local v3, "layout":Landroid/view/View;
    const v5, 0x7f100075

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 378
    .local v4, "message":Landroid/widget/TextView;
    const v5, 0x7f100167

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 379
    .local v1, "check":Landroid/widget/CheckBox;
    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 381
    const v5, 0x7f0a1d4d

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 382
    const v5, 0x7f0a1d4e

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 383
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 384
    const v5, 0x7f0a08f4

    new-instance v6, Lcom/android/settings/LockAddInfoSettings$4;

    invoke-direct {v6, p0}, Lcom/android/settings/LockAddInfoSettings$4;-><init>(Lcom/android/settings/LockAddInfoSettings;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 401
    const/high16 v5, 0x1040000

    new-instance v6, Lcom/android/settings/LockAddInfoSettings$5;

    invoke-direct {v6, p0}, Lcom/android/settings/LockAddInfoSettings$5;-><init>(Lcom/android/settings/LockAddInfoSettings;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 414
    new-instance v5, Lcom/android/settings/LockAddInfoSettings$6;

    invoke-direct {v5, p0}, Lcom/android/settings/LockAddInfoSettings$6;-><init>(Lcom/android/settings/LockAddInfoSettings;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 429
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/LockAddInfoSettings;->mMobileDataChargeDialog:Landroid/app/AlertDialog;

    .line 430
    iget-object v5, p0, Lcom/android/settings/LockAddInfoSettings;->mMobileDataChargeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 431
    return-void
.end method

.method private showPermissionDialog()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 436
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/LockAddInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 438
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v6, p0, Lcom/android/settings/LockAddInfoSettings;->mPermissionDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_0

    .line 439
    iget-object v6, p0, Lcom/android/settings/LockAddInfoSettings;->mPermissionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    .line 440
    iput-object v8, p0, Lcom/android/settings/LockAddInfoSettings;->mPermissionDialog:Landroid/app/AlertDialog;

    .line 443
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/LockAddInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 444
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f040207

    invoke-virtual {v2, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 445
    .local v3, "layout":Landroid/view/View;
    const v6, 0x7f1004ca

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 446
    .local v4, "message":Landroid/widget/TextView;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "- "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings/LockAddInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a1d87

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 448
    const v6, 0x7f1004cb

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 450
    .local v5, "setDoNotShowAgainView":Landroid/widget/LinearLayout;
    const v6, 0x7f1004cc

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 453
    .local v1, "checkBox":Landroid/widget/CheckBox;
    new-instance v6, Lcom/android/settings/LockAddInfoSettings$7;

    invoke-direct {v6, p0, v1}, Lcom/android/settings/LockAddInfoSettings$7;-><init>(Lcom/android/settings/LockAddInfoSettings;Landroid/widget/CheckBox;)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 465
    const v6, 0x7f0a1d85

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 466
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 467
    const v6, 0x7f0a08f4

    new-instance v7, Lcom/android/settings/LockAddInfoSettings$8;

    invoke-direct {v7, p0}, Lcom/android/settings/LockAddInfoSettings$8;-><init>(Lcom/android/settings/LockAddInfoSettings;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 475
    const/high16 v6, 0x1040000

    new-instance v7, Lcom/android/settings/LockAddInfoSettings$9;

    invoke-direct {v7, p0, v3}, Lcom/android/settings/LockAddInfoSettings$9;-><init>(Lcom/android/settings/LockAddInfoSettings;Landroid/view/View;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 491
    new-instance v6, Lcom/android/settings/LockAddInfoSettings$10;

    invoke-direct {v6, p0, v3}, Lcom/android/settings/LockAddInfoSettings$10;-><init>(Lcom/android/settings/LockAddInfoSettings;Landroid/view/View;)V

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 509
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/LockAddInfoSettings;->mPermissionDialog:Landroid/app/AlertDialog;

    .line 510
    iget-object v6, p0, Lcom/android/settings/LockAddInfoSettings;->mPermissionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 511
    iget-object v6, p0, Lcom/android/settings/LockAddInfoSettings;->mPermissionDialog:Landroid/app/AlertDialog;

    new-instance v7, Lcom/android/settings/LockAddInfoSettings$11;

    invoke-direct {v7, p0, v3}, Lcom/android/settings/LockAddInfoSettings$11;-><init>(Lcom/android/settings/LockAddInfoSettings;Landroid/view/View;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 523
    return-void
.end method


# virtual methods
.method public checkNetwork()Z
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 343
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Lcom/android/settings/LockAddInfoSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 344
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 346
    .local v3, "ni":Landroid/net/NetworkInfo;
    if-nez v3, :cond_1

    .line 361
    :cond_0
    :goto_0
    return v4

    .line 351
    :cond_1
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    .line 352
    .local v2, "isWifiAvail":Z
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 354
    if-nez v3, :cond_2

    move v4, v2

    .line 356
    goto :goto_0

    .line 359
    :cond_2
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    .line 361
    .local v1, "isMobileAvail":Z
    if-nez v2, :cond_3

    if-eqz v1, :cond_0

    :cond_3
    move v4, v5

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 10
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "desiredState"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/LockAddInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "lock_additional_weather"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_2

    move v4, v5

    .line 147
    .local v4, "mIsWeather":Z
    :goto_0
    if-eqz p2, :cond_0

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/LockAddInfoSettings;->checkNetwork()Z

    move-result v7

    if-nez v7, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/android/settings/LockAddInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f0a0f82

    invoke-static {v7, v8, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 150
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 151
    new-instance v2, Landroid/content/Intent;

    const-string v7, "com.sec.android.widgetapp.ap.kweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 153
    .local v2, "mIntent":Landroid/content/Intent;
    if-eqz p2, :cond_3

    if-eqz v4, :cond_3

    .line 154
    const-string v7, "START"

    invoke-virtual {v2, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 158
    :goto_1
    const-string v7, "PACKAGE"

    const-string v8, "com.android.systemui"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    const-string v7, "CP"

    const-string v8, "Kweather"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/LockAddInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 163
    invoke-virtual {p0}, Lcom/android/settings/LockAddInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "lock_additional_info"

    if-eqz p2, :cond_4

    :goto_2
    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 164
    iget-object v5, p0, Lcom/android/settings/LockAddInfoSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 165
    invoke-direct {p0, p2}, Lcom/android/settings/LockAddInfoSettings;->Steps_setEnabled(Z)V

    .line 222
    .end local v2    # "mIntent":Landroid/content/Intent;
    :cond_1
    :goto_3
    return-void

    .end local v4    # "mIsWeather":Z
    :cond_2
    move v4, v6

    .line 145
    goto :goto_0

    .line 156
    .restart local v2    # "mIntent":Landroid/content/Intent;
    .restart local v4    # "mIsWeather":Z
    :cond_3
    const-string v7, "START"

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    :cond_4
    move v5, v6

    .line 163
    goto :goto_2

    .line 167
    .end local v2    # "mIntent":Landroid/content/Intent;
    :cond_5
    invoke-static {}, Lcom/android/settings/Utils;->isChinaNAL()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 169
    invoke-virtual {p0}, Lcom/android/settings/LockAddInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "com.android.settings.LockAddInfoSettings"

    invoke-virtual {v7, v8, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 170
    .local v0, "ReverbSharedPrefs":Landroid/content/SharedPreferences;
    const/4 v1, 0x0

    .line 172
    .local v1, "doNotShowLocation":Z
    if-eqz v0, :cond_1

    .line 174
    const-string v7, "DoNotShowDialogLocation"

    invoke-interface {v0, v7, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 176
    invoke-virtual {p0}, Lcom/android/settings/LockAddInfoSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "lock_additional_info"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_6

    move v3, v5

    .line 177
    .local v3, "mIsMaster":Z
    :goto_4
    const-string v7, "LockAddInfoSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "doNotShowLocation="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    if-eqz p2, :cond_7

    if-nez v3, :cond_7

    if-eqz v4, :cond_7

    .line 181
    iput v6, p0, Lcom/android/settings/LockAddInfoSettings;->mViewType:I

    .line 182
    invoke-direct {p0}, Lcom/android/settings/LockAddInfoSettings;->showMobileDateChargeEnableDialog()V

    goto :goto_3

    .end local v3    # "mIsMaster":Z
    :cond_6
    move v3, v6

    .line 176
    goto :goto_4

    .line 184
    .restart local v3    # "mIsMaster":Z
    :cond_7
    if-eqz p2, :cond_8

    if-nez v3, :cond_8

    if-eqz v4, :cond_8

    if-nez v1, :cond_8

    .line 186
    iput v6, p0, Lcom/android/settings/LockAddInfoSettings;->mViewType:I

    .line 187
    invoke-direct {p0}, Lcom/android/settings/LockAddInfoSettings;->showPermissionDialog()V

    goto :goto_3

    .line 191
    :cond_8
    new-instance v2, Landroid/content/Intent;

    const-string v7, "com.sec.android.widgetapp.cmaweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 192
    .restart local v2    # "mIntent":Landroid/content/Intent;
    if-eqz p2, :cond_9

    if-eqz v4, :cond_9

    .line 193
    const-string v7, "START"

    invoke-virtual {v2, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 197
    :goto_5
    const-string v7, "PACKAGE"

    const-string v8, "com.android.systemui"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    const-string v7, "CP"

    const-string v8, "Cmaweather"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    invoke-virtual {p0}, Lcom/android/settings/LockAddInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 201
    invoke-virtual {p0}, Lcom/android/settings/LockAddInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "lock_additional_info"

    if-eqz p2, :cond_a

    :goto_6
    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 202
    iget-object v5, p0, Lcom/android/settings/LockAddInfoSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 203
    invoke-direct {p0, p2}, Lcom/android/settings/LockAddInfoSettings;->Steps_setEnabled(Z)V

    goto/16 :goto_3

    .line 195
    :cond_9
    const-string v7, "START"

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_5

    :cond_a
    move v5, v6

    .line 201
    goto :goto_6

    .line 208
    .end local v0    # "ReverbSharedPrefs":Landroid/content/SharedPreferences;
    .end local v1    # "doNotShowLocation":Z
    .end local v2    # "mIntent":Landroid/content/Intent;
    .end local v3    # "mIsMaster":Z
    :cond_b
    new-instance v2, Landroid/content/Intent;

    const-string v7, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 209
    .restart local v2    # "mIntent":Landroid/content/Intent;
    if-eqz p2, :cond_c

    if-eqz v4, :cond_c

    .line 210
    const-string v7, "START"

    invoke-virtual {v2, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 214
    :goto_7
    const-string v7, "PACKAGE"

    const-string v8, "com.android.systemui"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    const-string v7, "CP"

    const-string v8, "Accuweather"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    invoke-virtual {p0}, Lcom/android/settings/LockAddInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 218
    invoke-virtual {p0}, Lcom/android/settings/LockAddInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "lock_additional_info"

    if-eqz p2, :cond_d

    :goto_8
    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 219
    iget-object v5, p0, Lcom/android/settings/LockAddInfoSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 220
    invoke-direct {p0, p2}, Lcom/android/settings/LockAddInfoSettings;->Steps_setEnabled(Z)V

    goto/16 :goto_3

    .line 212
    :cond_c
    const-string v7, "START"

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_7

    :cond_d
    move v5, v6

    .line 218
    goto :goto_8
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/16 v4, 0x10

    const/4 v7, -0x2

    const/4 v6, 0x0

    .line 103
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/LockAddInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 106
    .local v0, "activity":Landroid/app/Activity;
    new-instance v2, Landroid/widget/Switch;

    invoke-direct {v2, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/LockAddInfoSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 108
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0058

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 110
    .local v1, "padding":I
    iget-object v2, p0, Lcom/android/settings/LockAddInfoSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v6, v6, v1, v6}, Landroid/widget/Switch;->setPaddingRelative(IIII)V

    .line 111
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 113
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/LockAddInfoSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    const v5, 0x800015

    invoke-direct {v4, v7, v7, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 117
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/LockAddInfoSettings;->mActionBarLayout:Landroid/view/View;

    .line 119
    iget-object v2, p0, Lcom/android/settings/LockAddInfoSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 121
    const v2, 0x7f07006e

    invoke-virtual {p0, v2}, Lcom/android/settings/LockAddInfoSettings;->addPreferencesFromResource(I)V

    .line 123
    const-string v2, "lock_info_weather"

    invoke-virtual {p0, v2}, Lcom/android/settings/LockAddInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/LockAddInfoSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    .line 124
    const-string v2, "steps"

    invoke-virtual {p0, v2}, Lcom/android/settings/LockAddInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/LockAddInfoSettings;->mSteps:Landroid/preference/CheckBoxPreference;

    .line 126
    invoke-static {v0}, Lcom/android/settings/Utils;->isSViewCoverSelectItemWithLockScreen(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 127
    const-string v2, "WALKMATE_TMR"

    iput-object v2, p0, Lcom/android/settings/LockAddInfoSettings;->mSHealthItentExtra_type:Ljava/lang/String;

    .line 132
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/LockAddInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.sec.android.app.shealth"

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/LockAddInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_additional_steps"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 134
    iget-object v2, p0, Lcom/android/settings/LockAddInfoSettings;->mSteps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 140
    :cond_0
    return-void

    .line 129
    :cond_1
    const-string v2, "WALKMATE"

    iput-object v2, p0, Lcom/android/settings/LockAddInfoSettings;->mSHealthItentExtra_type:Ljava/lang/String;

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 249
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 251
    iget-object v0, p0, Lcom/android/settings/LockAddInfoSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/android/settings/LockAddInfoSettings;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 253
    invoke-virtual {p0}, Lcom/android/settings/LockAddInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 255
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 239
    iget-object v0, p0, Lcom/android/settings/LockAddInfoSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/LockAddInfoSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/LockAddInfoSettings;->mSteps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    invoke-virtual {p0}, Lcom/android/settings/LockAddInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_additional_info"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 241
    invoke-virtual {p0}, Lcom/android/settings/LockAddInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a11a0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 243
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 244
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 271
    iget-object v5, p0, Lcom/android/settings/LockAddInfoSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    if-ne p2, v5, :cond_2

    .line 272
    invoke-virtual {p0}, Lcom/android/settings/LockAddInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isSViewCoverSelectItemWithLockScreen(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/LockAddInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->hasCoverSettingOptions(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 273
    iget-object v3, p0, Lcom/android/settings/LockAddInfoSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v3}, Lcom/android/settings/LockAddInfoSettings;->checkGuidePopupAvailable(Landroid/preference/Preference;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 274
    iget-object v3, p0, Lcom/android/settings/LockAddInfoSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v3}, Lcom/android/settings/LockAddInfoSettings;->showGuidePopup(Landroid/preference/Preference;)V

    .line 275
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    .line 328
    :goto_0
    return v3

    .line 278
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/settings/LockAddInfoSettings;->clickItemWeather(Landroid/preference/Preference;)V

    .line 279
    invoke-virtual {p0}, Lcom/android/settings/LockAddInfoSettings;->updateSwitchState()V

    .line 328
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    goto :goto_0

    .line 280
    :cond_2
    iget-object v5, p0, Lcom/android/settings/LockAddInfoSettings;->mSteps:Landroid/preference/CheckBoxPreference;

    if-ne p2, v5, :cond_1

    .line 281
    invoke-virtual {p0}, Lcom/android/settings/LockAddInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "com.sec.android.app.shealth"

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 282
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/LockAddInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 283
    .local v0, "mAlertDialog":Landroid/app/AlertDialog$Builder;
    const v5, 0x7f0a0fc7

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 284
    invoke-virtual {p0}, Lcom/android/settings/LockAddInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0fc8

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/settings/LockAddInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0fc9

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v4

    invoke-virtual {v5, v6, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 286
    .local v1, "mDialogMsg":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 287
    const v3, 0x104000a

    new-instance v4, Lcom/android/settings/LockAddInfoSettings$1;

    invoke-direct {v4, p0}, Lcom/android/settings/LockAddInfoSettings$1;-><init>(Lcom/android/settings/LockAddInfoSettings;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 297
    const/high16 v3, 0x1040000

    new-instance v4, Lcom/android/settings/LockAddInfoSettings$2;

    invoke-direct {v4, p0}, Lcom/android/settings/LockAddInfoSettings$2;-><init>(Lcom/android/settings/LockAddInfoSettings;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 303
    new-instance v3, Lcom/android/settings/LockAddInfoSettings$3;

    invoke-direct {v3, p0}, Lcom/android/settings/LockAddInfoSettings$3;-><init>(Lcom/android/settings/LockAddInfoSettings;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 309
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 310
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 311
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    goto :goto_0

    .line 314
    .end local v0    # "mAlertDialog":Landroid/app/AlertDialog$Builder;
    .end local v1    # "mDialogMsg":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/LockAddInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isSViewCoverSelectItemWithLockScreen(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/LockAddInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->hasCoverSettingOptions(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 315
    iget-object v5, p0, Lcom/android/settings/LockAddInfoSettings;->mSteps:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v5}, Lcom/android/settings/LockAddInfoSettings;->checkGuidePopupAvailable(Landroid/preference/Preference;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 316
    iget-object v3, p0, Lcom/android/settings/LockAddInfoSettings;->mSteps:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v3}, Lcom/android/settings/LockAddInfoSettings;->showGuidePopup(Landroid/preference/Preference;)V

    .line 317
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    goto/16 :goto_0

    .line 320
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/LockAddInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lock_additional_steps"

    iget-object v7, p0, Lcom/android/settings/LockAddInfoSettings;->mSteps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_5

    :goto_2
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 321
    invoke-virtual {p0}, Lcom/android/settings/LockAddInfoSettings;->updateSwitchState()V

    .line 323
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.android.app.shealth.COVER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 324
    .local v2, "mIntent":Landroid/content/Intent;
    const-string v3, "type"

    iget-object v4, p0, Lcom/android/settings/LockAddInfoSettings;->mSHealthItentExtra_type:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    invoke-virtual {p0}, Lcom/android/settings/LockAddInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .end local v2    # "mIntent":Landroid/content/Intent;
    :cond_5
    move v3, v4

    .line 320
    goto :goto_2
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 227
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 229
    iget-object v0, p0, Lcom/android/settings/LockAddInfoSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/android/settings/LockAddInfoSettings;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 231
    invoke-virtual {p0}, Lcom/android/settings/LockAddInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 233
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/LockAddInfoSettings;->updateState()V

    .line 234
    return-void
.end method

.method public updateState()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 259
    iget-object v0, p0, Lcom/android/settings/LockAddInfoSettings;->mMobileDataChargeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/LockAddInfoSettings;->mMobileDataChargeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 260
    :cond_0
    iget-object v3, p0, Lcom/android/settings/LockAddInfoSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/settings/LockAddInfoSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "lock_additional_info"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 261
    iget-object v3, p0, Lcom/android/settings/LockAddInfoSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LockAddInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "lock_additional_weather"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/android/settings/LockAddInfoSettings;->mSteps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LockAddInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lock_additional_steps"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_4

    :goto_2
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 264
    iget-object v0, p0, Lcom/android/settings/LockAddInfoSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/LockAddInfoSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 265
    iget-object v0, p0, Lcom/android/settings/LockAddInfoSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/LockAddInfoSettings;->Steps_setEnabled(Z)V

    .line 266
    return-void

    :cond_2
    move v0, v2

    .line 260
    goto :goto_0

    :cond_3
    move v0, v2

    .line 261
    goto :goto_1

    :cond_4
    move v1, v2

    .line 263
    goto :goto_2
.end method

.method public updateSwitchState()V
    .locals 3

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/settings/LockAddInfoSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/LockAddInfoSettings;->mSteps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 334
    invoke-virtual {p0}, Lcom/android/settings/LockAddInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_additional_info"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 338
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/LockAddInfoSettings;->updateState()V

    .line 339
    return-void

    .line 336
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/LockAddInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_additional_info"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
