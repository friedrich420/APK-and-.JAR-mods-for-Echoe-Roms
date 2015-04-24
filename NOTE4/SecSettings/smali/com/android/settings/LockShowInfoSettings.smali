.class public Lcom/android/settings/LockShowInfoSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "LockShowInfoSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/android/settings/OwnerInfoSettings$DialogFragmentListener;


# instance fields
.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mClockSize:Landroid/preference/ListPreference;

.field private mClockSize_with_preview:Landroid/preference/PreferenceScreen;

.field private mDualclock:Landroid/preference/PreferenceScreen;

.field private mHelpText:Landroid/preference/CheckBoxPreference;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMobileDataChargeDialog:Landroid/app/AlertDialog;

.field private mNewWeather:Landroid/preference/PreferenceScreen;

.field private mOwnerInfoMenu:Landroid/preference/PreferenceScreen;

.field private mPermissionDialog:Landroid/app/AlertDialog;

.field private mShowclock:Landroid/preference/CheckBoxPreference;

.field private mSteps:Landroid/preference/CheckBoxPreference;

.field private mViewType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 82
    iput-object v0, p0, Lcom/android/settings/LockShowInfoSettings;->mMobileDataChargeDialog:Landroid/app/AlertDialog;

    .line 83
    iput-object v0, p0, Lcom/android/settings/LockShowInfoSettings;->mPermissionDialog:Landroid/app/AlertDialog;

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/LockShowInfoSettings;->mViewType:I

    return-void
.end method

.method private Steps_setEnabled(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 375
    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.sec.android.app.shealth"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/android/settings/LockShowInfoSettings;->mSteps:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 380
    :goto_0
    return-void

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/android/settings/LockShowInfoSettings;->mSteps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/LockShowInfoSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/LockShowInfoSettings;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/LockShowInfoSettings;->mSteps:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/LockShowInfoSettings;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/LockShowInfoSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/settings/LockShowInfoSettings;->saveSharedPreferences(Ljava/lang/String;)V

    return-void
.end method

.method private checkGuidePopupAvailable(Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 435
    const/4 v0, 0x0

    .line 437
    .local v0, "doNotShow":Z
    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "com.android.settings.LockShowInfoSettings.Pedometer"

    invoke-virtual {v4, v5, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 439
    .local v1, "sp":Landroid/content/SharedPreferences;
    if-eqz v1, :cond_0

    .line 440
    const-string v4, "DoNotShowDialog"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 441
    :cond_0
    if-nez v0, :cond_1

    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method private saveSharedPreferences(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 445
    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, p1, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 447
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 448
    .local v0, "ed":Landroid/content/SharedPreferences$Editor;
    const-string v2, "DoNotShowDialog"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 449
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 450
    return-void
.end method

.method private showGuidePopup(Landroid/preference/Preference;)V
    .locals 9
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 455
    const v7, 0x7f0a0f8d

    invoke-virtual {p0, v7}, Lcom/android/settings/LockShowInfoSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 456
    .local v6, "popupTitle":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/LockShowInfoSettings;->mSteps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 457
    const v7, 0x7f0a0f8b

    invoke-virtual {p0, v7}, Lcom/android/settings/LockShowInfoSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 462
    .local v5, "popupMessage":Ljava/lang/String;
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 463
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v7, "layout_inflater"

    invoke-virtual {p0, v7}, Lcom/android/settings/LockShowInfoSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 465
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v7, 0x7f040086

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 466
    .local v3, "layout":Landroid/view/View;
    const v7, 0x7f10016b

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 467
    .local v4, "message":Landroid/widget/TextView;
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 468
    const v7, 0x7f10016c

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 469
    .local v1, "check":Landroid/widget/CheckBox;
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 470
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 471
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 473
    const/high16 v7, 0x1040000

    new-instance v8, Lcom/android/settings/LockShowInfoSettings$5;

    invoke-direct {v8, p0}, Lcom/android/settings/LockShowInfoSettings$5;-><init>(Lcom/android/settings/LockShowInfoSettings;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 479
    new-instance v7, Lcom/android/settings/LockShowInfoSettings$6;

    invoke-direct {v7, p0}, Lcom/android/settings/LockShowInfoSettings$6;-><init>(Lcom/android/settings/LockShowInfoSettings;)V

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 484
    const v7, 0x104000a

    new-instance v8, Lcom/android/settings/LockShowInfoSettings$7;

    invoke-direct {v8, p0, v3}, Lcom/android/settings/LockShowInfoSettings$7;-><init>(Lcom/android/settings/LockShowInfoSettings;Landroid/view/View;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 492
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 493
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 494
    return-void

    .line 459
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "check":Landroid/widget/CheckBox;
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    .end local v3    # "layout":Landroid/view/View;
    .end local v4    # "message":Landroid/widget/TextView;
    .end local v5    # "popupMessage":Ljava/lang/String;
    :cond_0
    const v7, 0x7f0a0f8c

    invoke-virtual {p0, v7}, Lcom/android/settings/LockShowInfoSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "popupMessage":Ljava/lang/String;
    goto :goto_0
.end method

.method private updateClockSizeSummary()V
    .locals 5

    .prologue
    .line 412
    iget-object v2, p0, Lcom/android/settings/LockShowInfoSettings;->mClockSize:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 413
    .local v1, "entries":[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_screen_clock_size"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 414
    .local v0, "State":I
    iget-object v2, p0, Lcom/android/settings/LockShowInfoSettings;->mClockSize:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 415
    iget-object v2, p0, Lcom/android/settings/LockShowInfoSettings;->mClockSize:Landroid/preference/ListPreference;

    aget-object v3, v1, v0

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 416
    return-void
.end method

.method private updateClockSizeSummaryK()V
    .locals 5

    .prologue
    .line 419
    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 420
    .local v1, "entries":[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_screen_clock_size"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 421
    .local v0, "State":I
    iget-object v2, p0, Lcom/android/settings/LockShowInfoSettings;->mClockSize_with_preview:Landroid/preference/PreferenceScreen;

    aget-object v3, v1, v0

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 422
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "desiredState"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 177
    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lock_show_info"

    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 178
    iget-object v0, p0, Lcom/android/settings/LockShowInfoSettings;->mShowclock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 179
    iget-object v0, p0, Lcom/android/settings/LockShowInfoSettings;->mNewWeather:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 180
    invoke-direct {p0, p2}, Lcom/android/settings/LockShowInfoSettings;->Steps_setEnabled(Z)V

    .line 182
    if-ne p2, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "lock_screen_show_clock"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 183
    iget-object v0, p0, Lcom/android/settings/LockShowInfoSettings;->mDualclock:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 184
    iget-object v0, p0, Lcom/android/settings/LockShowInfoSettings;->mClockSize:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 185
    iget-object v0, p0, Lcom/android/settings/LockShowInfoSettings;->mClockSize_with_preview:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 191
    :goto_1
    iget-object v0, p0, Lcom/android/settings/LockShowInfoSettings;->mOwnerInfoMenu:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 192
    iget-object v0, p0, Lcom/android/settings/LockShowInfoSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 194
    return-void

    :cond_0
    move v0, v2

    .line 177
    goto :goto_0

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/android/settings/LockShowInfoSettings;->mDualclock:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 188
    iget-object v0, p0, Lcom/android/settings/LockShowInfoSettings;->mClockSize:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 189
    iget-object v0, p0, Lcom/android/settings/LockShowInfoSettings;->mClockSize_with_preview:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/16 v4, 0x10

    const/4 v8, 0x1

    const/4 v7, -0x2

    const/4 v6, 0x0

    .line 106
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 110
    .local v0, "activity":Landroid/app/Activity;
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/LockShowInfoSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 111
    new-instance v2, Landroid/widget/Switch;

    invoke-direct {v2, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/LockShowInfoSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 113
    instance-of v2, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v2, :cond_0

    .line 115
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0058

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 117
    .local v1, "padding":I
    iget-object v2, p0, Lcom/android/settings/LockShowInfoSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v6, v6, v1, v6}, Landroid/widget/Switch;->setPaddingRelative(IIII)V

    .line 118
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 120
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/LockShowInfoSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    const v5, 0x800015

    invoke-direct {v4, v7, v7, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 124
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/LockShowInfoSettings;->mActionBarLayout:Landroid/view/View;

    .line 127
    .end local v1    # "padding":I
    :cond_0
    iget-object v2, p0, Lcom/android/settings/LockShowInfoSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 129
    const v2, 0x7f07006f

    invoke-virtual {p0, v2}, Lcom/android/settings/LockShowInfoSettings;->addPreferencesFromResource(I)V

    .line 131
    const-string v2, "lock_screen_show_clock"

    invoke-virtual {p0, v2}, Lcom/android/settings/LockShowInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/LockShowInfoSettings;->mShowclock:Landroid/preference/CheckBoxPreference;

    .line 132
    const-string v2, "dualclock_settings"

    invoke-virtual {p0, v2}, Lcom/android/settings/LockShowInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/settings/LockShowInfoSettings;->mDualclock:Landroid/preference/PreferenceScreen;

    .line 133
    const-string v2, "clock_size"

    invoke-virtual {p0, v2}, Lcom/android/settings/LockShowInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/settings/LockShowInfoSettings;->mClockSize:Landroid/preference/ListPreference;

    .line 134
    const-string v2, "clock_size_with_preview"

    invoke-virtual {p0, v2}, Lcom/android/settings/LockShowInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/settings/LockShowInfoSettings;->mClockSize_with_preview:Landroid/preference/PreferenceScreen;

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/LockShowInfoSettings;->mClockSize:Landroid/preference/ListPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 140
    const-string v2, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isEasyMode30Status(Landroid/content/ContentResolver;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/LockShowInfoSettings;->mDualclock:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/LockShowInfoSettings;->mClockSize_with_preview:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 151
    :cond_1
    const-string v2, "lock_info_weather"

    invoke-virtual {p0, v2}, Lcom/android/settings/LockShowInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/settings/LockShowInfoSettings;->mNewWeather:Landroid/preference/PreferenceScreen;

    .line 152
    const-string v2, "steps"

    invoke-virtual {p0, v2}, Lcom/android/settings/LockShowInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/LockShowInfoSettings;->mSteps:Landroid/preference/CheckBoxPreference;

    .line 153
    const-string v2, "owner_info_settings"

    invoke-virtual {p0, v2}, Lcom/android/settings/LockShowInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/settings/LockShowInfoSettings;->mOwnerInfoMenu:Landroid/preference/PreferenceScreen;

    .line 155
    const-string v2, "help_text"

    invoke-virtual {p0, v2}, Lcom/android/settings/LockShowInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/LockShowInfoSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    .line 156
    iget-object v2, p0, Lcom/android/settings/LockShowInfoSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v2

    if-eq v2, v8, :cond_2

    iget-object v2, p0, Lcom/android/settings/LockShowInfoSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/LockShowInfoSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v2

    if-ne v2, v8, :cond_3

    .line 158
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/LockShowInfoSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 160
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isPedometerSupported(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_additional_steps"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/LockShowInfoSettings;->mSteps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 166
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "android.app.cocktailbarservice.settings.SETTINGSMAIN"

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/LockShowInfoSettings;->mNewWeather:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/LockShowInfoSettings;->mSteps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 171
    :cond_5
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 225
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 227
    iget-object v0, p0, Lcom/android/settings/LockShowInfoSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/settings/LockShowInfoSettings;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 229
    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 231
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 219
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 220
    return-void
.end method

.method public onPositiveClick()V
    .locals 5

    .prologue
    const/16 v3, 0x41

    .line 396
    iget-object v2, p0, Lcom/android/settings/LockShowInfoSettings;->mOwnerInfoMenu:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_1

    .line 397
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 398
    .local v1, "mUserId":I
    iget-object v2, p0, Lcom/android/settings/LockShowInfoSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v0

    .line 399
    .local v0, "info":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 400
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_0

    .line 401
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 403
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 404
    iget-object v2, p0, Lcom/android/settings/LockShowInfoSettings;->mOwnerInfoMenu:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 409
    .end local v0    # "info":Ljava/lang/String;
    .end local v1    # "mUserId":I
    :cond_1
    :goto_0
    return-void

    .line 406
    .restart local v0    # "info":Ljava/lang/String;
    .restart local v1    # "mUserId":I
    :cond_2
    iget-object v2, p0, Lcom/android/settings/LockShowInfoSettings;->mOwnerInfoMenu:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0217

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/settings/LockShowInfoSettings;->mClockSize:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_0

    .line 427
    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_clock_size"

    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 428
    invoke-direct {p0}, Lcom/android/settings/LockShowInfoSettings;->updateClockSizeSummary()V

    .line 431
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 11
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const v10, 0x104000a

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 299
    iget-object v6, p0, Lcom/android/settings/LockShowInfoSettings;->mShowclock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 300
    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lock_screen_show_clock"

    iget-object v8, p0, Lcom/android/settings/LockShowInfoSettings;->mShowclock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_1

    :goto_0
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 301
    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->updateState()V

    .line 370
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v4

    :goto_2
    return v4

    :cond_1
    move v4, v5

    .line 300
    goto :goto_0

    .line 302
    :cond_2
    iget-object v6, p0, Lcom/android/settings/LockShowInfoSettings;->mSteps:Landroid/preference/CheckBoxPreference;

    if-ne p2, v6, :cond_6

    .line 303
    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "com.sec.android.app.shealth"

    invoke-static {v6, v7}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 304
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 305
    .local v2, "mAlertDialog":Landroid/app/AlertDialog$Builder;
    const v6, 0x7f0a0fc7

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 306
    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0fc8

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0fc9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-virtual {v6, v7, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 308
    .local v3, "mDialogMsg":Ljava/lang/String;
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 309
    new-instance v4, Lcom/android/settings/LockShowInfoSettings$1;

    invoke-direct {v4, p0}, Lcom/android/settings/LockShowInfoSettings$1;-><init>(Lcom/android/settings/LockShowInfoSettings;)V

    invoke-virtual {v2, v10, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 319
    const/high16 v4, 0x1040000

    new-instance v5, Lcom/android/settings/LockShowInfoSettings$2;

    invoke-direct {v5, p0}, Lcom/android/settings/LockShowInfoSettings$2;-><init>(Lcom/android/settings/LockShowInfoSettings;)V

    invoke-virtual {v2, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 325
    new-instance v4, Lcom/android/settings/LockShowInfoSettings$3;

    invoke-direct {v4, p0}, Lcom/android/settings/LockShowInfoSettings$3;-><init>(Lcom/android/settings/LockShowInfoSettings;)V

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 331
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 332
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 333
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v4

    goto :goto_2

    .line 336
    .end local v2    # "mAlertDialog":Landroid/app/AlertDialog$Builder;
    .end local v3    # "mDialogMsg":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isSViewCoverSelectItemWithLockScreen(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 337
    iget-object v6, p0, Lcom/android/settings/LockShowInfoSettings;->mSteps:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v6}, Lcom/android/settings/LockShowInfoSettings;->checkGuidePopupAvailable(Landroid/preference/Preference;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 338
    iget-object v4, p0, Lcom/android/settings/LockShowInfoSettings;->mSteps:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v4}, Lcom/android/settings/LockShowInfoSettings;->showGuidePopup(Landroid/preference/Preference;)V

    .line 339
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v4

    goto/16 :goto_2

    .line 343
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lock_additional_steps"

    iget-object v8, p0, Lcom/android/settings/LockShowInfoSettings;->mSteps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_5

    :goto_3
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_5
    move v4, v5

    goto :goto_3

    .line 345
    :cond_6
    const-string v6, "owner_info_settings"

    invoke-virtual {p0, v6}, Lcom/android/settings/LockShowInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    if-ne p2, v6, :cond_7

    .line 346
    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->showDialog()V

    goto/16 :goto_1

    .line 347
    :cond_7
    iget-object v6, p0, Lcom/android/settings/LockShowInfoSettings;->mDualclock:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 348
    const-string v5, "oversea"

    const-string v6, "ril.currentplmn"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 349
    .local v1, "isRoamingArea":Z
    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 350
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 351
    .restart local v2    # "mAlertDialog":Landroid/app/AlertDialog$Builder;
    const v5, 0x7f0a1378

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 352
    const v5, 0x7f0a1a22

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 353
    new-instance v5, Lcom/android/settings/LockShowInfoSettings$4;

    invoke-direct {v5, p0}, Lcom/android/settings/LockShowInfoSettings$4;-><init>(Lcom/android/settings/LockShowInfoSettings;)V

    invoke-virtual {v2, v10, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 358
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_2

    .line 361
    .end local v1    # "isRoamingArea":Z
    .end local v2    # "mAlertDialog":Landroid/app/AlertDialog$Builder;
    :cond_8
    iget-object v6, p0, Lcom/android/settings/LockShowInfoSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 362
    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "unlock_text"

    iget-object v8, p0, Lcom/android/settings/LockShowInfoSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_9

    :goto_4
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_9
    move v4, v5

    goto :goto_4

    .line 363
    :cond_a
    iget-object v4, p0, Lcom/android/settings/LockShowInfoSettings;->mNewWeather:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 364
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.sec.android.widgetapp.weather.setting"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 365
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "PACKAGE"

    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    const/high16 v4, 0x24000000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 367
    invoke-virtual {p0, v0}, Lcom/android/settings/LockShowInfoSettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 199
    iget-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 200
    .local v0, "super_mOpenDetailMenu":Z
    iput-boolean v2, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 202
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 204
    iget-object v1, p0, Lcom/android/settings/LockShowInfoSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 205
    iget-object v1, p0, Lcom/android/settings/LockShowInfoSettings;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 206
    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 209
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->updateState()V

    .line 211
    iput-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 212
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->openSearchDetailMenu()V

    .line 215
    return-void
.end method

.method showDialog()V
    .locals 4

    .prologue
    .line 383
    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "dialog"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/settings/OwnerInfoSettings;

    .line 384
    .local v1, "oldFrag":Lcom/android/settings/OwnerInfoSettings;
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 385
    invoke-virtual {v1}, Lcom/android/settings/OwnerInfoSettings;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 392
    :goto_0
    return-void

    .line 389
    :cond_0
    const v2, 0x7f0a0214

    invoke-static {v2}, Lcom/android/settings/OwnerInfoSettings;->newInstance(I)Lcom/android/settings/OwnerInfoSettings;

    move-result-object v0

    .line 390
    .local v0, "newFragment":Lcom/android/settings/OwnerInfoSettings;
    invoke-virtual {v0, p0}, Lcom/android/settings/OwnerInfoSettings;->setDialogFragmentListener(Lcom/android/settings/OwnerInfoSettings$DialogFragmentListener;)V

    .line 391
    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "dialog"

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/OwnerInfoSettings;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateState()V
    .locals 9

    .prologue
    const/16 v8, 0x41

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 235
    iget-object v6, p0, Lcom/android/settings/LockShowInfoSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "lock_show_info"

    invoke-static {v3, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_5

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 237
    iget-object v6, p0, Lcom/android/settings/LockShowInfoSettings;->mShowclock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "lock_screen_show_clock"

    invoke-static {v3, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_6

    move v3, v4

    :goto_1
    invoke-virtual {v6, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 238
    iget-object v3, p0, Lcom/android/settings/LockShowInfoSettings;->mShowclock:Landroid/preference/CheckBoxPreference;

    iget-object v6, p0, Lcom/android/settings/LockShowInfoSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v6}, Landroid/widget/Switch;->isChecked()Z

    move-result v6

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 240
    iget-object v6, p0, Lcom/android/settings/LockShowInfoSettings;->mDualclock:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "dualclock_menu_settings"

    invoke-static {v3, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_7

    const v3, 0x7f0a0a5e

    :goto_2
    invoke-virtual {v6, v3}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 241
    iget-object v3, p0, Lcom/android/settings/LockShowInfoSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "lock_screen_show_clock"

    invoke-static {v3, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_8

    .line 242
    iget-object v3, p0, Lcom/android/settings/LockShowInfoSettings;->mDualclock:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 246
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "lock_screen_clock_size"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 247
    .local v1, "mClockSizeValue":I
    const-string v3, "LockShowInfoSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mClockSizeValue : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v3, p0, Lcom/android/settings/LockShowInfoSettings;->mClockSize:Landroid/preference/ListPreference;

    if-eqz v3, :cond_0

    .line 249
    iget-object v3, p0, Lcom/android/settings/LockShowInfoSettings;->mClockSize:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 250
    iget-object v3, p0, Lcom/android/settings/LockShowInfoSettings;->mClockSize:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 251
    invoke-direct {p0}, Lcom/android/settings/LockShowInfoSettings;->updateClockSizeSummary()V

    .line 252
    iget-object v3, p0, Lcom/android/settings/LockShowInfoSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "lock_screen_show_clock"

    invoke-static {v3, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_9

    .line 253
    iget-object v3, p0, Lcom/android/settings/LockShowInfoSettings;->mClockSize:Landroid/preference/ListPreference;

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 257
    :cond_0
    :goto_4
    iget-object v3, p0, Lcom/android/settings/LockShowInfoSettings;->mClockSize_with_preview:Landroid/preference/PreferenceScreen;

    if-eqz v3, :cond_1

    .line 258
    invoke-direct {p0}, Lcom/android/settings/LockShowInfoSettings;->updateClockSizeSummaryK()V

    .line 259
    iget-object v3, p0, Lcom/android/settings/LockShowInfoSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "lock_screen_show_clock"

    invoke-static {v3, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_a

    .line 260
    iget-object v3, p0, Lcom/android/settings/LockShowInfoSettings;->mClockSize_with_preview:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 265
    :cond_1
    :goto_5
    iget-object v6, p0, Lcom/android/settings/LockShowInfoSettings;->mSteps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "lock_additional_steps"

    invoke-static {v3, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_b

    move v3, v4

    :goto_6
    invoke-virtual {v6, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 266
    iget-object v3, p0, Lcom/android/settings/LockShowInfoSettings;->mNewWeather:Landroid/preference/PreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/LockShowInfoSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v6}, Landroid/widget/Switch;->isChecked()Z

    move-result v6

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 267
    iget-object v3, p0, Lcom/android/settings/LockShowInfoSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/settings/LockShowInfoSettings;->Steps_setEnabled(Z)V

    .line 269
    iget-object v3, p0, Lcom/android/settings/LockShowInfoSettings;->mOwnerInfoMenu:Landroid/preference/PreferenceScreen;

    if-eqz v3, :cond_3

    .line 270
    iget-object v3, p0, Lcom/android/settings/LockShowInfoSettings;->mOwnerInfoMenu:Landroid/preference/PreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/LockShowInfoSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v6}, Landroid/widget/Switch;->isChecked()Z

    move-result v6

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 271
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 272
    .local v2, "mUserId":I
    iget-object v3, p0, Lcom/android/settings/LockShowInfoSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, "info":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 274
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v8, :cond_2

    .line 275
    invoke-virtual {v0, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 277
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_c

    .line 278
    iget-object v3, p0, Lcom/android/settings/LockShowInfoSettings;->mOwnerInfoMenu:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 284
    .end local v0    # "info":Ljava/lang/String;
    .end local v2    # "mUserId":I
    :cond_3
    :goto_7
    iget-object v3, p0, Lcom/android/settings/LockShowInfoSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_4

    .line 285
    iget-object v3, p0, Lcom/android/settings/LockShowInfoSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "unlock_text"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_d

    :goto_8
    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 286
    iget-object v3, p0, Lcom/android/settings/LockShowInfoSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/settings/LockShowInfoSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4}, Landroid/widget/Switch;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 287
    const-string v3, "DCM"

    const-string v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 288
    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isDCMhome(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 289
    iget-object v3, p0, Lcom/android/settings/LockShowInfoSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 294
    :cond_4
    return-void

    .end local v1    # "mClockSizeValue":I
    :cond_5
    move v3, v5

    .line 235
    goto/16 :goto_0

    :cond_6
    move v3, v5

    .line 237
    goto/16 :goto_1

    .line 240
    :cond_7
    const v3, 0x7f0a0a5f

    goto/16 :goto_2

    .line 244
    :cond_8
    iget-object v3, p0, Lcom/android/settings/LockShowInfoSettings;->mDualclock:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_3

    .line 255
    .restart local v1    # "mClockSizeValue":I
    :cond_9
    iget-object v3, p0, Lcom/android/settings/LockShowInfoSettings;->mClockSize:Landroid/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto/16 :goto_4

    .line 262
    :cond_a
    iget-object v3, p0, Lcom/android/settings/LockShowInfoSettings;->mClockSize_with_preview:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_5

    :cond_b
    move v3, v5

    .line 265
    goto/16 :goto_6

    .line 280
    .restart local v0    # "info":Ljava/lang/String;
    .restart local v2    # "mUserId":I
    :cond_c
    iget-object v3, p0, Lcom/android/settings/LockShowInfoSettings;->mOwnerInfoMenu:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/LockShowInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0217

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_7

    .end local v0    # "info":Ljava/lang/String;
    .end local v2    # "mUserId":I
    :cond_d
    move v4, v5

    .line 285
    goto :goto_8
.end method
