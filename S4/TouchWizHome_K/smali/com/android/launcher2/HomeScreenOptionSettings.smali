.class public Lcom/android/launcher2/HomeScreenOptionSettings;
.super Landroid/preference/PreferenceActivity;
.source "HomeScreenOptionSettings.java"


# static fields
.field public static final KEY_MY_MAGAZINE:Ljava/lang/String; = "pref_my_magazine"

.field public static final KEY_TRANSITION_EFFECT_CHECKBOX:Ljava/lang/String; = "pref_transition_effect"

.field public static final KEY_TRANSITION_EFFECT_LIST:Ljava/lang/String; = "pref_list_transition_effect"

.field public static final RESULT_TRANSITION_EFFECT1:I = 0x1

.field public static final RESULT_TRANSITION_EFFECT2:I = 0x2

.field public static final RESULT_TRANSITION_NONE:I

.field public static TAG:Ljava/lang/String;

.field private static final mProductName:Ljava/lang/String;


# instance fields
.field magazineEnabled:Landroid/preference/CheckBoxPreference;

.field ps:Landroid/preference/PreferenceScreen;

.field transitionEffect_checkBox:Landroid/preference/CheckBoxPreference;

.field transitionEffect_setting:Landroid/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-string v0, "HomeScreenSettings"

    sput-object v0, Lcom/android/launcher2/HomeScreenOptionSettings;->TAG:Ljava/lang/String;

    .line 56
    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/HomeScreenOptionSettings;->mProductName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private setEnableHMagazine(Z)V
    .locals 0
    .param p1, "isEnable"    # Z

    .prologue
    .line 205
    sput-boolean p1, Lcom/android/launcher2/Launcher;->sIsMagazineHomeEnable:Z

    .line 206
    return-void
.end method

.method private setEnableMagazine(Z)V
    .locals 1
    .param p1, "isEnable"    # Z

    .prologue
    .line 199
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v0

    .line 200
    .local v0, "launcher":Lcom/android/launcher2/Launcher;
    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {v0, p1}, Lcom/android/launcher2/Launcher;->setEnableHeadlines(Z)V

    .line 202
    :cond_0
    return-void
.end method

.method private setEnableTransitionEffect(I)V
    .locals 5
    .param p1, "i"    # I

    .prologue
    .line 209
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v2

    .line 210
    .local v2, "launcher":Lcom/android/launcher2/Launcher;
    if-eqz v2, :cond_0

    .line 211
    invoke-virtual {v2, p1}, Lcom/android/launcher2/Launcher;->setWhichTransitionEffect(I)V

    .line 213
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/HomeScreenOptionSettings;->transitionEffect_setting:Landroid/preference/Preference;

    if-eqz v3, :cond_1

    .line 214
    iget-object v3, p0, Lcom/android/launcher2/HomeScreenOptionSettings;->transitionEffect_setting:Landroid/preference/Preference;

    invoke-virtual {v3}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 215
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 216
    .local v1, "integer":Ljava/lang/Integer;
    const-string v3, "pref_list_transition_effect"

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 217
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 219
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "integer":Ljava/lang/Integer;
    :cond_1
    return-void
.end method

.method private setSummaryTransitionList(I)V
    .locals 2
    .param p1, "whichTransitionEffect"    # I

    .prologue
    .line 183
    const/4 v0, 0x0

    .line 184
    .local v0, "summaryResId":I
    packed-switch p1, :pswitch_data_0

    .line 195
    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionSettings;->transitionEffect_setting:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 196
    return-void

    .line 186
    :pswitch_0
    const v0, 0x7f10004e

    .line 187
    goto :goto_0

    .line 189
    :pswitch_1
    const v0, 0x7f10004f

    .line 190
    goto :goto_0

    .line 192
    :pswitch_2
    const v0, 0x7f100050

    goto :goto_0

    .line 184
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 224
    sget-object v0, Lcom/android/launcher2/HomeScreenOptionSettings;->TAG:Ljava/lang/String;

    const-string v1, "onAcitivityResult()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 227
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 230
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/launcher2/HomeScreenOptionSettings;->setSummaryTransitionList(I)V

    .line 232
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 59
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenOptionSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v6, 0x258

    if-lt v5, v6, :cond_6

    .line 63
    const/4 v5, -0x1

    invoke-virtual {p0, v5}, Lcom/android/launcher2/HomeScreenOptionSettings;->setRequestedOrientation(I)V

    .line 67
    :goto_0
    const v5, 0x7f030025

    invoke-virtual {p0, v5}, Lcom/android/launcher2/HomeScreenOptionSettings;->addPreferencesFromResource(I)V

    .line 69
    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenOptionSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 70
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenOptionSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f10004c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 72
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 75
    :cond_0
    const-string v5, "home_screen_settings"

    invoke-virtual {p0, v5}, Lcom/android/launcher2/HomeScreenOptionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/launcher2/HomeScreenOptionSettings;->ps:Landroid/preference/PreferenceScreen;

    .line 77
    const-string v5, "pref_my_magazine"

    invoke-virtual {p0, v5}, Lcom/android/launcher2/HomeScreenOptionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/launcher2/HomeScreenOptionSettings;->magazineEnabled:Landroid/preference/CheckBoxPreference;

    .line 78
    const-string v5, "pref_transition_effect"

    invoke-virtual {p0, v5}, Lcom/android/launcher2/HomeScreenOptionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/launcher2/HomeScreenOptionSettings;->transitionEffect_checkBox:Landroid/preference/CheckBoxPreference;

    .line 79
    const-string v5, "pref_list_transition_effect"

    invoke-virtual {p0, v5}, Lcom/android/launcher2/HomeScreenOptionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher2/HomeScreenOptionSettings;->transitionEffect_setting:Landroid/preference/Preference;

    .line 85
    const/4 v2, 0x0

    .line 87
    .local v2, "newBriefingApp_installed":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenOptionSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "flipboard.boxer.app"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    const/4 v2, 0x1

    .line 93
    :goto_1
    if-nez v2, :cond_1

    .line 94
    iget-object v5, p0, Lcom/android/launcher2/HomeScreenOptionSettings;->magazineEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenOptionSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f100051

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v5, p0, Lcom/android/launcher2/HomeScreenOptionSettings;->magazineEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenOptionSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f100052

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 98
    :cond_1
    iget-object v5, p0, Lcom/android/launcher2/HomeScreenOptionSettings;->transitionEffect_setting:Landroid/preference/Preference;

    if-eqz v5, :cond_2

    .line 99
    iget-object v5, p0, Lcom/android/launcher2/HomeScreenOptionSettings;->transitionEffect_setting:Landroid/preference/Preference;

    invoke-virtual {v5}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 101
    .local v3, "pref":Landroid/content/SharedPreferences;
    if-eqz v3, :cond_2

    .line 102
    const-string v5, "pref_list_transition_effect"

    const-string v6, "1"

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 103
    .local v4, "whichTransitionEffect":I
    invoke-direct {p0, v4}, Lcom/android/launcher2/HomeScreenOptionSettings;->setSummaryTransitionList(I)V

    .line 108
    .end local v3    # "pref":Landroid/content/SharedPreferences;
    .end local v4    # "whichTransitionEffect":I
    :cond_2
    iget-object v5, p0, Lcom/android/launcher2/HomeScreenOptionSettings;->ps:Landroid/preference/PreferenceScreen;

    if-eqz v5, :cond_3

    .line 109
    iget-object v5, p0, Lcom/android/launcher2/HomeScreenOptionSettings;->ps:Landroid/preference/PreferenceScreen;

    iget-object v6, p0, Lcom/android/launcher2/HomeScreenOptionSettings;->transitionEffect_checkBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 112
    :cond_3
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isOwner()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/LauncherApplication;->isKnoxMode()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "ALTIUS"

    const-string v6, "ALTIUS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v5, Lcom/android/launcher2/HomeScreenOptionSettings;->mProductName:Ljava/lang/String;

    const-string v6, "jsglte"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 114
    :cond_4
    iget-object v5, p0, Lcom/android/launcher2/HomeScreenOptionSettings;->magazineEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 115
    iget-object v5, p0, Lcom/android/launcher2/HomeScreenOptionSettings;->magazineEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 116
    iget-object v5, p0, Lcom/android/launcher2/HomeScreenOptionSettings;->ps:Landroid/preference/PreferenceScreen;

    iget-object v6, p0, Lcom/android/launcher2/HomeScreenOptionSettings;->magazineEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 118
    :cond_5
    return-void

    .line 65
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    .end local v2    # "newBriefingApp_installed":Z
    :cond_6
    invoke-virtual {p0, v7}, Lcom/android/launcher2/HomeScreenOptionSettings;->setRequestedOrientation(I)V

    goto/16 :goto_0

    .line 89
    .restart local v0    # "actionBar":Landroid/app/ActionBar;
    .restart local v2    # "newBriefingApp_installed":Z
    :catch_0
    move-exception v1

    .line 90
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 122
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v2

    .line 123
    .local v2, "launcher":Lcom/android/launcher2/Launcher;
    if-eqz v2, :cond_0

    .line 124
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v1

    .line 125
    .local v1, "animationLayer":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 127
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 130
    .local v0, "aniLp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    .end local v0    # "aniLp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v1    # "animationLayer":Landroid/view/View;
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/HomeScreenOptionSettings;->magazineEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isOwner()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherApplication;->isKnoxMode()Z

    move-result v3

    if-nez v3, :cond_2

    .line 136
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/launcher2/HomeScreenOptionSettings;->setEnableMagazine(Z)V

    .line 140
    :cond_1
    :goto_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 141
    return-void

    .line 137
    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/HomeScreenOptionSettings;->magazineEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_1

    .line 138
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/launcher2/HomeScreenOptionSettings;->setEnableMagazine(Z)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 173
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 179
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 176
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenOptionSettings;->onBackPressed()V

    .line 177
    const/4 v0, 0x1

    goto :goto_0

    .line 173
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 145
    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionSettings;->magazineEnabled:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_4

    .line 146
    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionSettings;->magazineEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isOwner()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherApplication;->isKnoxMode()Z

    move-result v1

    if-nez v1, :cond_2

    .line 148
    sget-boolean v1, Lcom/android/launcher2/LauncherApplication;->sMagazineLauncher:Z

    if-eqz v1, :cond_1

    .line 149
    invoke-direct {p0, v2}, Lcom/android/launcher2/HomeScreenOptionSettings;->setEnableHMagazine(Z)V

    .line 168
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    .line 151
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/launcher2/HomeScreenOptionSettings;->setEnableMagazine(Z)V

    goto :goto_0

    .line 153
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionSettings;->magazineEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 154
    sget-boolean v1, Lcom/android/launcher2/LauncherApplication;->sMagazineLauncher:Z

    if-eqz v1, :cond_3

    .line 155
    invoke-direct {p0, v3}, Lcom/android/launcher2/HomeScreenOptionSettings;->setEnableHMagazine(Z)V

    goto :goto_0

    .line 157
    :cond_3
    invoke-direct {p0, v3}, Lcom/android/launcher2/HomeScreenOptionSettings;->setEnableMagazine(Z)V

    goto :goto_0

    .line 159
    :cond_4
    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionSettings;->transitionEffect_checkBox:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_6

    .line 160
    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionSettings;->transitionEffect_checkBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 161
    invoke-direct {p0, v2}, Lcom/android/launcher2/HomeScreenOptionSettings;->setEnableTransitionEffect(I)V

    goto :goto_0

    .line 163
    :cond_5
    invoke-direct {p0, v3}, Lcom/android/launcher2/HomeScreenOptionSettings;->setEnableTransitionEffect(I)V

    goto :goto_0

    .line 164
    :cond_6
    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionSettings;->transitionEffect_setting:Landroid/preference/Preference;

    if-ne p2, v1, :cond_0

    .line 165
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/launcher2/HomeScreenOptionTransition;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 166
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0, v2}, Lcom/android/launcher2/HomeScreenOptionSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
