.class public Lcom/android/settings/OneHandHelp;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OneHandHelp.java"


# instance fields
.field private mEnableScreenHelp:Landroid/preference/PreferenceScreen;

.field private mInputControlHelp:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v0, 0x7f07008a

    invoke-virtual {p0, v0}, Lcom/android/settings/OneHandHelp;->addPreferencesFromResource(I)V

    .line 47
    const-string v0, "enable_screen_help"

    invoke-virtual {p0, v0}, Lcom/android/settings/OneHandHelp;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/OneHandHelp;->mEnableScreenHelp:Landroid/preference/PreferenceScreen;

    .line 48
    const-string v0, "input_control_help"

    invoke-virtual {p0, v0}, Lcom/android/settings/OneHandHelp;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/OneHandHelp;->mInputControlHelp:Landroid/preference/PreferenceScreen;

    .line 55
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v5, 0x0

    const v4, 0x104000a

    .line 70
    iget-object v3, p0, Lcom/android/settings/OneHandHelp;->mEnableScreenHelp:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 72
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/OneHandHelp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 74
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/android/settings/OneHandHelp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 75
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f0400b0

    invoke-virtual {v1, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 77
    .local v2, "layout":Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 78
    const v3, 0x7f0a1bb0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 80
    new-instance v3, Lcom/android/settings/OneHandHelp$1;

    invoke-direct {v3, p0}, Lcom/android/settings/OneHandHelp$1;-><init>(Lcom/android/settings/OneHandHelp;)V

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 84
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 85
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 103
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    .end local v2    # "layout":Landroid/view/View;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    return v3

    .line 86
    :cond_1
    iget-object v3, p0, Lcom/android/settings/OneHandHelp;->mInputControlHelp:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 88
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/OneHandHelp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 90
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/android/settings/OneHandHelp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 91
    .restart local v1    # "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f04015e

    invoke-virtual {v1, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 93
    .restart local v2    # "layout":Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 94
    const v3, 0x7f0a1c0d

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 96
    new-instance v3, Lcom/android/settings/OneHandHelp$2;

    invoke-direct {v3, p0}, Lcom/android/settings/OneHandHelp$2;-><init>(Lcom/android/settings/OneHandHelp;)V

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 100
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 101
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method
