.class public Lcom/android/server/telecom/RespondViaSmsSettings$Settings;
.super Landroid/preference/PreferenceActivity;
.source "RespondViaSmsSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 51
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const-string v0, "Settings: onCreate()..."

    new-array v1, v10, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    const-string v0, "QuickResponseUtils"

    const-string v1, "maybeMigrateLegacyQuickResponses() - Starting"

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "respond_via_sms_prefs"

    invoke-virtual {p0, v0, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v0, "canned_response_pref_1"

    invoke-interface {v6, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "QuickResponseUtils"

    const-string v1, "maybeMigrateLegacyQuickResponses() - Telecom QuickResponses exist"

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/telecom/RespondViaSmsSettings$Settings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    const-string v1, "respond_via_sms_prefs"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 73
    const/high16 v0, 0x7f050000

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/RespondViaSmsSettings$Settings;->addPreferencesFromResource(I)V

    .line 76
    const-string v0, "canned_response_pref_1"

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/RespondViaSmsSettings$Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    .line 78
    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 79
    invoke-virtual {v0, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 81
    const-string v0, "canned_response_pref_2"

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/RespondViaSmsSettings$Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    .line 83
    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 84
    invoke-virtual {v0, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 86
    const-string v0, "canned_response_pref_3"

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/RespondViaSmsSettings$Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    .line 88
    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 89
    invoke-virtual {v0, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 91
    const-string v0, "canned_response_pref_4"

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/RespondViaSmsSettings$Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    .line 93
    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 94
    invoke-virtual {v0, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 96
    invoke-virtual {p0}, Lcom/android/server/telecom/RespondViaSmsSettings$Settings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_0

    .line 99
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 101
    :cond_0
    return-void

    .line 57
    :cond_1
    const v0, 0x7f080013

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f080014

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f080015

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v4, 0x7f080016

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "QuickResponseUtils"

    const-string v5, "maybeMigrateLegacyQuickResponses() - No local QuickResponses"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v4, v5, v7}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x0

    :try_start_0
    const-string v4, "com.android.phone"

    const/4 v7, 0x0

    invoke-virtual {p0, v4, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :goto_1
    if-eqz v4, :cond_2

    const-string v5, "QuickResponseUtils"

    const-string v7, "maybeMigrateLegacyQuickResponses() - Using Telephony QuickResponses."

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v5, v7, v8}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v5, "respond_via_sms_prefs"

    invoke-virtual {v4, v5, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "canned_response_pref_1"

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "canned_response_pref_2"

    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "canned_response_pref_3"

    invoke-interface {v4, v5, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "canned_response_pref_4"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_2
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "canned_response_pref_1"

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "canned_response_pref_2"

    invoke-interface {v4, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "canned_response_pref_3"

    invoke-interface {v4, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "canned_response_pref_4"

    invoke-interface {v4, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v0, "QuickResponseUtils"

    const-string v1, "maybeMigrateLegacyQuickResponses() - Done."

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :catch_0
    move-exception v4

    const-string v7, "QuickResponseUtils"

    const-string v8, "maybeMigrateLegacyQuickResponses() - Can\'t find Telephony package."

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {v7, v4, v8, v9}, Lcom/android/server/telecom/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v4, v5

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/android/server/telecom/RespondViaSmsSettings$Settings;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0d0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 145
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 123
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 124
    sparse-switch v1, :sswitch_data_0

    .line 139
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 126
    :sswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 130
    :sswitch_1
    const-string v1, "respond_via_sms_prefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/telecom/RespondViaSmsSettings$Settings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 132
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 133
    const-string v2, "instant_text_def_component"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 134
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 124
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0e000d -> :sswitch_1
    .end sparse-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 106
    const-string v0, "onPreferenceChange: key = %s"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    const-string v0, "  preference = \'%s\'"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    const-string v0, "  newValue = \'%s\'"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p2, v1, v4

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    check-cast p1, Landroid/preference/EditTextPreference;

    .line 116
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/preference/EditTextPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 118
    return v3
.end method
